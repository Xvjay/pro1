// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDZz6cexmGJN9yJnKq-pe2q5VIu8xOOeDo',
    appId: '1:135230598451:web:07bb858b4fd4393e7d6246',
    messagingSenderId: '135230598451',
    projectId: 'duolingo-4365c',
    authDomain: 'duolingo-4365c.firebaseapp.com',
    storageBucket: 'duolingo-4365c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC3bYw-O0TBHT5cytoz-kfUaxZFlcfvu9U',
    appId: '1:135230598451:android:654de107e0b229717d6246',
    messagingSenderId: '135230598451',
    projectId: 'duolingo-4365c',
    storageBucket: 'duolingo-4365c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYCH7eiLkxHXQtw1jOBzgFOC7Kcfzc89o',
    appId: '1:135230598451:ios:7c0ba133c2426d747d6246',
    messagingSenderId: '135230598451',
    projectId: 'duolingo-4365c',
    storageBucket: 'duolingo-4365c.appspot.com',
    iosBundleId: 'com.example.pro1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCYCH7eiLkxHXQtw1jOBzgFOC7Kcfzc89o',
    appId: '1:135230598451:ios:2b66e127fd5dcf8f7d6246',
    messagingSenderId: '135230598451',
    projectId: 'duolingo-4365c',
    storageBucket: 'duolingo-4365c.appspot.com',
    iosBundleId: 'com.example.pro1.RunnerTests',
  );
}
