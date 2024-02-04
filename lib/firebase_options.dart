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
    apiKey: 'AIzaSyDufMOWv2GnNnL_JEfOrb-29B6PvPZgwrI',
    appId: '1:187275177929:web:4049cd19306e280c7f4218',
    messagingSenderId: '187275177929',
    projectId: 'fitness-85be9',
    authDomain: 'fitness-85be9.firebaseapp.com',
    databaseURL: 'https://fitness-85be9-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fitness-85be9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBohVHuXlKVCoCQZan4OyN1sj8bolHkPc',
    appId: '1:187275177929:android:deb6438119772dd87f4218',
    messagingSenderId: '187275177929',
    projectId: 'fitness-85be9',
    databaseURL: 'https://fitness-85be9-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fitness-85be9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAGIyzBjhxMsH9NI2d9A2ju2f7j5IYMvU8',
    appId: '1:187275177929:ios:d7f374dd7cca87ab7f4218',
    messagingSenderId: '187275177929',
    projectId: 'fitness-85be9',
    databaseURL: 'https://fitness-85be9-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fitness-85be9.appspot.com',
    iosBundleId: 'com.example.fitnessApplication',
  );
}
