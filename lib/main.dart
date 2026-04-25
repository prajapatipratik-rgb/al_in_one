// import 'package:al_in_one/utils/theme/theme.dart';
import 'package:al_in_one/data/repositories/authentication/authentication_repository.dart';
import 'package:al_in_one/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/foundation.dart';

import 'app.dart';

Future<void> main() async {
  //Widgets Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

// Local Storage
  await GetStorage.init();

// Await Native Splash until other items Load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

// Initialize Firebase and Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) {
    {
      debugPrint('Firebase projectId: ${value.options.projectId}');
      debugPrint('Firebase appId: ${value.options.appId}');

      Get.put(AuthenticationRespository());
    }
  });
// Todo: Initialize Authentication
// Load all the Material Design / Themes / Localizations / Bindings
  runApp(const App());
}
