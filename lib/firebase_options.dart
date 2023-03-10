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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDZu0o_jXAsaXQufa8HopXsbiTmT_1u3q0',
    appId: '1:992353698972:web:d90897453885ab2b7ad959',
    messagingSenderId: '992353698972',
    projectId: 'wsos-women-safety',
    authDomain: 'wsos-women-safety.firebaseapp.com',
    storageBucket: 'wsos-women-safety.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA41CZbOR7cDysQFyriIAGSdYvDuMZG8Zo',
    appId: '1:992353698972:android:e97823cd0fb7eb9e7ad959',
    messagingSenderId: '992353698972',
    projectId: 'wsos-women-safety',
    storageBucket: 'wsos-women-safety.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAbwBkE5rirOvsaXFo_xkvoD5SAZa4NZcw',
    appId: '1:992353698972:ios:dda6fd78c5942efc7ad959',
    messagingSenderId: '992353698972',
    projectId: 'wsos-women-safety',
    storageBucket: 'wsos-women-safety.appspot.com',
    iosClientId: '992353698972-h9shbn7ca4ckui9voq7il8bmdmrbrrj1.apps.googleusercontent.com',
    iosBundleId: 'com.example.wsosWomenSafety',
  );
}
