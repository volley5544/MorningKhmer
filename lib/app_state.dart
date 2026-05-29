import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _pinCode = prefs.getString('ff_pinCode') ?? _pinCode;
    });
    _safeInit(() {
      _employeeId = prefs.getString('ff_employeeId') ?? _employeeId;
    });
    _safeInit(() {
      _profilePhone = prefs.getString('ff_profilePhone') ?? _profilePhone;
    });
    _safeInit(() {
      _deviceId = prefs.getString('ff_deviceId') ?? _deviceId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  DocumentReference? _applicationConfigDocRef =
      FirebaseFirestore.instance.doc('/ApplicationConfig/CxvGJl2nq2dJxpgcMdB5');
  DocumentReference? get applicationConfigDocRef => _applicationConfigDocRef;
  set applicationConfigDocRef(DocumentReference? value) {
    _applicationConfigDocRef = value;
  }

  bool _isLoginNew = false;
  bool get isLoginNew => _isLoginNew;
  set isLoginNew(bool value) {
    _isLoginNew = value;
  }

  String _pinCode = '';
  String get pinCode => _pinCode;
  set pinCode(String value) {
    _pinCode = value;
    prefs.setString('ff_pinCode', value);
  }

  bool _fromPinPage = false;
  bool get fromPinPage => _fromPinPage;
  set fromPinPage(bool value) {
    _fromPinPage = value;
  }

  String _employeeId = '';
  String get employeeId => _employeeId;
  set employeeId(String value) {
    _employeeId = value;
    prefs.setString('ff_employeeId', value);
  }

  String _profilePhone = '';
  String get profilePhone => _profilePhone;
  set profilePhone(String value) {
    _profilePhone = value;
    prefs.setString('ff_profilePhone', value);
  }

  bool _fromSetPin = false;
  bool get fromSetPin => _fromSetPin;
  set fromSetPin(bool value) {
    _fromSetPin = value;
  }

  bool _isLogin = false;
  bool get isLogin => _isLogin;
  set isLogin(bool value) {
    _isLogin = value;
  }

  DocumentReference? _imageLinkStorageDocRef =
      FirebaseFirestore.instance.doc('/ImageLinkStorage/KcT4iDHX2iHnVMrKWxn0');
  DocumentReference? get imageLinkStorageDocRef => _imageLinkStorageDocRef;
  set imageLinkStorageDocRef(DocumentReference? value) {
    _imageLinkStorageDocRef = value;
  }

  DocumentReference? _keyStorage1ProdDocRef =
      FirebaseFirestore.instance.doc('/KeyStorage1/Mo1APgp1TnqDPi2rZEJ9');
  DocumentReference? get keyStorage1ProdDocRef => _keyStorage1ProdDocRef;
  set keyStorage1ProdDocRef(DocumentReference? value) {
    _keyStorage1ProdDocRef = value;
  }

  String _deviceId = '';
  String get deviceId => _deviceId;
  set deviceId(String value) {
    _deviceId = value;
    prefs.setString('ff_deviceId', value);
  }

  DocumentReference? _urlStorageDocRef =
      FirebaseFirestore.instance.doc('/AppConfig/Djewnrk92oQa4g3EK76s');
  DocumentReference? get urlStorageDocRef => _urlStorageDocRef;
  set urlStorageDocRef(DocumentReference? value) {
    _urlStorageDocRef = value;
  }

  UrlStorageDataModelStruct _urlStorageData = UrlStorageDataModelStruct();
  UrlStorageDataModelStruct get urlStorageData => _urlStorageData;
  set urlStorageData(UrlStorageDataModelStruct value) {
    _urlStorageData = value;
  }

  void updateUrlStorageDataStruct(
      Function(UrlStorageDataModelStruct) updateFn) {
    updateFn(_urlStorageData);
  }

  ProfileDataModelStruct _profileAppState = ProfileDataModelStruct();
  ProfileDataModelStruct get profileAppState => _profileAppState;
  set profileAppState(ProfileDataModelStruct value) {
    _profileAppState = value;
  }

  void updateProfileAppStateStruct(Function(ProfileDataModelStruct) updateFn) {
    updateFn(_profileAppState);
  }

  AppVersionDataModelStruct _appVersionData = AppVersionDataModelStruct();
  AppVersionDataModelStruct get appVersionData => _appVersionData;
  set appVersionData(AppVersionDataModelStruct value) {
    _appVersionData = value;
  }

  void updateAppVersionDataStruct(
      Function(AppVersionDataModelStruct) updateFn) {
    updateFn(_appVersionData);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
