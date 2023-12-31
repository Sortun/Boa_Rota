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
    apiKey: 'AIzaSyCMbbsv9FMkFJA_BICoSPC3T6DxIOMBMOA',
    appId: '1:54490328228:web:dd4bf78d8160d7339dca31',
    messagingSenderId: '54490328228',
    projectId: 'boa-rota-71aed',
    authDomain: 'boa-rota-71aed.firebaseapp.com',
    storageBucket: 'boa-rota-71aed.appspot.com',
    measurementId: 'G-KP7QWCDF0J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDKYTMSGdT6QCZ3f2dZjc5KF9ZYZ5fDto0',
    appId: '1:54490328228:android:8331b2c8daf631e39dca31',
    messagingSenderId: '54490328228',
    projectId: 'boa-rota-71aed',
    storageBucket: 'boa-rota-71aed.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCSXQkBEsuLSwxUCbluF4OUCGyTxlAGH_k',
    appId: '1:54490328228:ios:05ef9a45d5ed99729dca31',
    messagingSenderId: '54490328228',
    projectId: 'boa-rota-71aed',
    storageBucket: 'boa-rota-71aed.appspot.com',
    iosBundleId: 'com.example.findTransportes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCSXQkBEsuLSwxUCbluF4OUCGyTxlAGH_k',
    appId: '1:54490328228:ios:afbc578dfddc54139dca31',
    messagingSenderId: '54490328228',
    projectId: 'boa-rota-71aed',
    storageBucket: 'boa-rota-71aed.appspot.com',
    iosBundleId: 'com.example.findTransportes.RunnerTests',
  );
}
