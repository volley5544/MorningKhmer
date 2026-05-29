import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAo_PBFmj4fV5bpUoeaPKUe8WazjleZ0Bw",
            authDomain: "arunsawad-khmer-uat.firebaseapp.com",
            projectId: "arunsawad-khmer-uat",
            storageBucket: "arunsawad-khmer-uat.firebasestorage.app",
            messagingSenderId: "30564555989",
            appId: "1:30564555989:web:e376adf51086f8d2cf565c",
            measurementId: "G-Z3QTMJ7P9N"));
  } else {
    await Firebase.initializeApp();
  }
}
