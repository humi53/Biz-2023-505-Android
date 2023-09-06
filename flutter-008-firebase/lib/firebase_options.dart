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
    apiKey: 'AIzaSyAMJ8Dnl9RBRvLujQ-u2tVUyacqHGbXPow',
    appId: '1:621011602853:web:f34d162e3a2992e6966c4c',
    messagingSenderId: '621011602853',
    projectId: 'flutter-my-app-55440',
    authDomain: 'flutter-my-app-55440.firebaseapp.com',
    storageBucket: 'flutter-my-app-55440.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDAwFcOSVj8ckz6n-WlFhZlY8e2tma-QjY',
    appId: '1:621011602853:android:b76d68560d3f729a966c4c',
    messagingSenderId: '621011602853',
    projectId: 'flutter-my-app-55440',
    storageBucket: 'flutter-my-app-55440.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBwFLFwO9udapbX2HwRR3d0d_rktkiG-pE',
    appId: '1:621011602853:ios:764c72eb2a5f6909966c4c',
    messagingSenderId: '621011602853',
    projectId: 'flutter-my-app-55440',
    storageBucket: 'flutter-my-app-55440.appspot.com',
    iosClientId: '621011602853-4ndbljbvqpvsmg2q9nd4aohcmbgm7l54.apps.googleusercontent.com',
    iosBundleId: 'com.callor.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBwFLFwO9udapbX2HwRR3d0d_rktkiG-pE',
    appId: '1:621011602853:ios:55cb634e2d8eaced966c4c',
    messagingSenderId: '621011602853',
    projectId: 'flutter-my-app-55440',
    storageBucket: 'flutter-my-app-55440.appspot.com',
    iosClientId: '621011602853-c4p3uv1dkonhr1aorgb0pnb7sksd7ppt.apps.googleusercontent.com',
    iosBundleId: 'com.callor.firebase.RunnerTests',
  );
}
