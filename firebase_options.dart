// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyANTPlTHha34x4oNdN-2XiTIfoBCGGjHIM',
    appId: '1:307685857477:web:74258c0468fe3c3e42f8ac',
    messagingSenderId: '307685857477',
    projectId: 'tutor-x-tution-management',
    authDomain: 'tutor-x-tution-management.firebaseapp.com',
    storageBucket: 'tutor-x-tution-management.appspot.com',
    measurementId: 'G-PHMLT839DJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-FUqF6_E0K9pvtA9Gcbu4lQt8d2QSt9Q',
    appId: '1:307685857477:android:7a6b2f7d7170397f42f8ac',
    messagingSenderId: '307685857477',
    projectId: 'tutor-x-tution-management',
    storageBucket: 'tutor-x-tution-management.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8nG0cdbvUODglEspqde0MJinH1AKj_Og',
    appId: '1:307685857477:ios:5503b8c479561f4d42f8ac',
    messagingSenderId: '307685857477',
    projectId: 'tutor-x-tution-management',
    storageBucket: 'tutor-x-tution-management.appspot.com',
    iosBundleId: 'me.soumyo.tutorXTutionManagement',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8nG0cdbvUODglEspqde0MJinH1AKj_Og',
    appId: '1:307685857477:ios:5503b8c479561f4d42f8ac',
    messagingSenderId: '307685857477',
    projectId: 'tutor-x-tution-management',
    storageBucket: 'tutor-x-tution-management.appspot.com',
    iosBundleId: 'me.soumyo.tutorXTutionManagement',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyANTPlTHha34x4oNdN-2XiTIfoBCGGjHIM',
    appId: '1:307685857477:web:e67538804760515a42f8ac',
    messagingSenderId: '307685857477',
    projectId: 'tutor-x-tution-management',
    authDomain: 'tutor-x-tution-management.firebaseapp.com',
    storageBucket: 'tutor-x-tution-management.appspot.com',
    measurementId: 'G-8DZGQNERXP',
  );

}