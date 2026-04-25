import 'package:al_in_one/common/Authentication/firebase_authentication_exception.dart';
import 'package:al_in_one/common/Authentication/firebase_exception.dart';
import 'package:al_in_one/common/Authentication/format_exception.dart';
import 'package:al_in_one/features/authentication/screens/Login/login.dart';
import 'package:al_in_one/features/authentication/screens/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRespository extends GetxController {
  static AuthenticationRespository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Functions to Show Relevant Screen
  Future<void> screenRedirect() async {
    // Local Storage
    if (kDebugMode) {
      print('========== GET STORRAGE Auth Repo ==========');
      print(deviceStorage.read('IsFirstTime'));
    }
    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() =>
            const LoginScreen()) // Redirect to Login Screen if not the first time
        : Get.offAll(
            const OnBoardingScreen()); // Redirect to OnBoarding Screen if it's the first time
  }

/* ----------- Email & Password sign-in-------------*/

// [EmailAuthentication] - SignIn

// [EmailAuthentication] - REGISTER

  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
