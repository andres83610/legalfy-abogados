import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBM4v4u1lrd0i9Mh4xlgVi4epWj1L3Sm4o",
            authDomain: "legalfyfinal.firebaseapp.com",
            projectId: "legalfyfinal",
            storageBucket: "legalfyfinal.appspot.com",
            messagingSenderId: "598153145111",
            appId: "1:598153145111:web:ae18d418ebc12222116552"));
  } else {
    await Firebase.initializeApp();
  }
}
