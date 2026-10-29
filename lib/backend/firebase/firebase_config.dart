import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBsT0emKzn_wnJsI-X5tZJVohQ6oVUlWIY",
            authDomain: "arunsawad-khmer.firebaseapp.com",
            projectId: "arunsawad-khmer",
            storageBucket: "arunsawad-khmer.firebasestorage.app",
            messagingSenderId: "323525059078",
            appId: "1:323525059078:web:acabb2feaaea74ec165987",
            measurementId: "G-QSSZSQTVSY"));
  } else {
    await Firebase.initializeApp();
  }
}
