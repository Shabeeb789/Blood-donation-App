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
    apiKey: 'AIzaSyCojFbLIs8eOsK6dJUsHApuaVnkNVTskMQ',
    appId: '1:120036024467:web:d0ae5d65b4dcac25fd6d66',
    messagingSenderId: '120036024467',
    projectId: 'blooddonationappshabeeb',
    authDomain: 'blooddonationappshabeeb.firebaseapp.com',
    storageBucket: 'blooddonationappshabeeb.appspot.com',
    measurementId: 'G-1RQBZLCE8F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAH6v79sS9oRLHKfFyl8aW0w5JrQPL5oYY',
    appId: '1:120036024467:android:e223a39485b27a94fd6d66',
    messagingSenderId: '120036024467',
    projectId: 'blooddonationappshabeeb',
    storageBucket: 'blooddonationappshabeeb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMY5wFDgOJIecEDkuLZBYKe4nYWlj4qQI',
    appId: '1:120036024467:ios:d3a62506ceec7398fd6d66',
    messagingSenderId: '120036024467',
    projectId: 'blooddonationappshabeeb',
    storageBucket: 'blooddonationappshabeeb.appspot.com',
    iosClientId: '120036024467-7vcujj7r5pv6se02a5mu490b5avmm3dm.apps.googleusercontent.com',
    iosBundleId: 'com.example.bloodDonation',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAMY5wFDgOJIecEDkuLZBYKe4nYWlj4qQI',
    appId: '1:120036024467:ios:d3a62506ceec7398fd6d66',
    messagingSenderId: '120036024467',
    projectId: 'blooddonationappshabeeb',
    storageBucket: 'blooddonationappshabeeb.appspot.com',
    iosClientId: '120036024467-7vcujj7r5pv6se02a5mu490b5avmm3dm.apps.googleusercontent.com',
    iosBundleId: 'com.example.bloodDonation',
  );
}
