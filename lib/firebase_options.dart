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
    apiKey: 'AIzaSyCqLj3qhn89i8ynSM3ff4UQ9XI0nj-hg7s',
    appId: '1:810250962:web:87317f50d77e473cf7730b',
    messagingSenderId: '810250962',
    projectId: 'toko-online-901cc',
    authDomain: 'toko-online-901cc.firebaseapp.com',
    storageBucket: 'toko-online-901cc.appspot.com',
    measurementId: 'G-BQJMFEX53R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCR80IX7Gcw2ie_shOvwPED-YZWZYoEHM',
    appId: '1:810250962:android:ad8579513e541b69f7730b',
    messagingSenderId: '810250962',
    projectId: 'toko-online-901cc',
    storageBucket: 'toko-online-901cc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCd1Kv8sniVGZ5AKo3mTg_xKN7E3PYorKU',
    appId: '1:810250962:ios:c49b994d23d970daf7730b',
    messagingSenderId: '810250962',
    projectId: 'toko-online-901cc',
    storageBucket: 'toko-online-901cc.appspot.com',
    iosBundleId: 'com.example.flutterTokoOnline',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCd1Kv8sniVGZ5AKo3mTg_xKN7E3PYorKU',
    appId: '1:810250962:ios:fe51b58491fb79bcf7730b',
    messagingSenderId: '810250962',
    projectId: 'toko-online-901cc',
    storageBucket: 'toko-online-901cc.appspot.com',
    iosBundleId: 'com.example.flutterTokoOnline.RunnerTests',
  );
}