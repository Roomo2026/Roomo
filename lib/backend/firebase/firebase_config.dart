import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDyInokNwIeF8D0INLhO2Pxz1R1Lr3PzsY",
            authDomain: "rai-chatbot-project.firebaseapp.com",
            projectId: "rai-chatbot-project",
            storageBucket: "rai-chatbot-project.firebasestorage.app",
            messagingSenderId: "56638965498",
            appId: "1:56638965498:web:0cefcfc4d5e7bacd0f2b43",
            measurementId: "G-JZ71DJF7WT"));
  } else {
    await Firebase.initializeApp();
  }
}
