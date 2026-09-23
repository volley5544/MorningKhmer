// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

/// Hosts the Morning Khmer leave web app.
///
/// The web app has no login of its own: it waits for a `session` message on
/// `window.MorningKhmerWeb.receive`. An `index.html` shim queues anything sent
/// before Flutter boots, so pushing the session on load is safe.
class LeaveWebView extends StatefulWidget {
  const LeaveWebView({
    super.key,
    this.width,
    this.height,
    this.webUrl,
    this.token,
    this.apiBaseUrl,
    this.language,
    this.employeeId,
    this.fullName,
    this.nickName,
    this.position,
    this.branchName,
    this.phone,
    this.headOfWork,
  });

  final double? width;
  final double? height;
  final String? webUrl;
  final String? token;
  final String? apiBaseUrl;
  final String? language;
  final String? employeeId;
  final String? fullName;
  final String? nickName;
  final String? position;
  final String? branchName;
  final String? phone;
  final String? headOfWork;

  @override
  State<LeaveWebView> createState() => _LeaveWebViewState();
}

class _LeaveWebViewState extends State<LeaveWebView> {
  /// Used when AppConfig has no `leave_web_url` yet.
  static const String _fallbackUrl = 'https://arunsawad-khmer-uat.web.app';

  /// The web app must answer within this long or we show a retry.
  static const Duration _loadTimeout = Duration(seconds: 25);

  /// iOS can kill the content process under memory pressure. Reload, but do
  /// not loop forever.
  static const int _maxAutoReloads = 2;

  InAppWebViewController? _controller;
  Timer? _timeout;
  bool _loading = true;
  bool _closing = false;
  String? _error;
  int _reloads = 0;

  /// FlutterFlow passes page params and the auth token as nullable, so every
  /// parameter here is `String?` and read through this.
  static String _s(String? value) => value?.trim() ?? '';

  String get _url =>
      _s(widget.webUrl).isEmpty ? _fallbackUrl : _s(widget.webUrl);

  @override
  void initState() {
    super.initState();
    _startTimeout();
  }

  @override
  void dispose() {
    _timeout?.cancel();
    super.dispose();
  }

  void _startTimeout() {
    _timeout?.cancel();
    _timeout = Timer(_loadTimeout, () {
      if (mounted && _loading) {
        setState(() => _error = 'The leave page took too long to load.');
      }
    });
  }

  /// Hands the session to the web app. The payload goes over as a JSON
  /// *string* so no quoting in the data can break the surrounding JavaScript.
  Future<void> _sendSession() async {
    final payload = jsonEncode({
      'type': 'session',
      'data': {
        'token': _s(widget.token),
        // Required in production: that Firestore denies unauthenticated
        // reads, so the web app cannot look this up for itself.
        'apiBaseUrl': _s(widget.apiBaseUrl),
        'language': _s(widget.language).isEmpty ? 'en' : _s(widget.language),
        'employeeId': _s(widget.employeeId),
        'fullName': _s(widget.fullName),
        'nickName': _s(widget.nickName),
        'position': _s(widget.position),
        'branchName': _s(widget.branchName),
        'phone': _s(widget.phone),
        'headOfWork': _s(widget.headOfWork),
      },
    });
    await _controller?.evaluateJavascript(
      source: 'window.MorningKhmerWeb && '
          'window.MorningKhmerWeb.receive(${jsonEncode(payload)});',
    );
  }

  /// Leaves the host route. Uses `pop()`, not `maybePop()`: the `PopScope`
  /// below has `canPop: false`, so `maybePop()` would be refused and re-enter
  /// `onPopInvokedWithResult`, which calls back here — the WebView could
  /// never close.
  void _close() {
    if (!mounted || _closing) return;
    _closing = true;
    Navigator.of(context).pop();
  }

  void _handleBridgeMessage(String raw) {
    Map<String, dynamic> message;
    try {
      final decoded = jsonDecode(raw);
      if (decoded is! Map) return;
      message = Map<String, dynamic>.from(decoded);
    } catch (_) {
      return; // A malformed message must never take the page down.
    }

    switch (message['type']) {
      case 'ready':
      case 'requestSession':
        _sendSession();
        break;
      case 'sessionExpired':
      case 'close':
        _close();
        break;
      default:
        break;
    }
  }

  Future<void> _retry() async {
    setState(() {
      _error = null;
      _loading = true;
    });
    _startTimeout();
    await _controller?.loadUrl(urlRequest: URLRequest(url: WebUri(_url)));
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) async {
        if (didPop) return;
        // Let the embedded app consume back first; only leave at its root.
        if (await _controller?.canGoBack() ?? false) {
          await _controller?.goBack();
        } else {
          _close();
        }
      },
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(url: WebUri(_url)),
              initialSettings: InAppWebViewSettings(
                javaScriptEnabled: true,
                transparentBackground: true,
                useHybridComposition: true,
                allowsInlineMediaPlayback: true,
                // iOS edge-swipe walks the embedded SPA's history, which
                // nothing here can intercept, and strands the user.
                allowsBackForwardNavigationGestures: false,
                supportZoom: false,
                // Never leave a live employee session scriptable over a cable.
                isInspectable: false,
              ),
              onWebViewCreated: (controller) {
                _controller = controller;
                controller.addJavaScriptHandler(
                  handlerName: 'MorningKhmerBridge',
                  callback: (args) {
                    if (args.isNotEmpty) _handleBridgeMessage('${args.first}');
                    return null;
                  },
                );
              },
              onLoadStop: (controller, url) async {
                _timeout?.cancel();
                if (mounted) setState(() => _loading = false);
                await _sendSession();
              },
              onReceivedError: (controller, request, error) {
                if (request.isForMainFrame != true) return;
                _timeout?.cancel();
                if (mounted) {
                  setState(() => _error =
                      'Could not reach the leave page. (${error.description})');
                }
              },
              onReceivedHttpError: (controller, request, response) {
                if (request.isForMainFrame != true) return;
                _timeout?.cancel();
                if (mounted) {
                  setState(() => _error =
                      'The leave page returned ${response.statusCode}.');
                }
              },
              onWebContentProcessDidTerminate: (controller) {
                if (_reloads++ < _maxAutoReloads) {
                  controller.reload();
                } else if (mounted) {
                  setState(() => _error =
                      'The leave page closed repeatedly. Please try again.');
                }
              },
            ),
            if (_loading && _error == null)
              const ColoredBox(
                color: Colors.white,
                child: Center(child: CircularProgressIndicator()),
              ),
            if (_error != null)
              _ErrorPane(message: _error!, onRetry: _retry, onClose: _close),
          ],
        ),
      ),
    );
  }
}

/// Shown instead of a dead white page. The reference implementation this is
/// modelled on had no error path at all: a failed load left a modal spinner
/// up forever with no way out.
class _ErrorPane extends StatelessWidget {
  const _ErrorPane({
    required this.message,
    required this.onRetry,
    required this.onClose,
  });

  final String message;
  final VoidCallback onRetry;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.wifi_off_rounded,
                size: 40,
                color: Color(0xFF9AA0A6),
              ),
              const SizedBox(height: 12),
              Text(message, textAlign: TextAlign.center),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OutlinedButton(
                      onPressed: onClose, child: const Text('Close')),
                  const SizedBox(width: 12),
                  FilledButton(
                    onPressed: onRetry,
                    child: const Text('Try again'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
