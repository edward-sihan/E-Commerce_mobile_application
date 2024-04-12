// import 'package:ecommerce/features/authentication/screens/login/login.dart';
// import 'package:ecommerce/features/authentication/screens/onboarding/onboarding.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/onboarding.dart';
//import 'package:ecommerce/features/authentication/screens/signup/verfiy_email.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  User? get authUser => _auth.currentUser;

  @override
  void onReady() {
    // FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const OnBoardingScreen());
      } else {
        Get.offAll(() => const NavigationMenu());
      }
    } else {
      //Local Storage
      deviceStorage.writeIfNull('isFirstName', true);
      deviceStorage.read('isFirstTime') != true
          ? Get.offAll(() => const OnBoardingScreen())
          : Get.offAll(const OnBoardingScreen());
    }
  }

  ///Email Authentcation - Reigster
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw 'Something Went Wrong, Please try Again';
    }
  }

  ///Email Verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } catch (e) {
      throw 'Something went wrong, Please Try again';
    }
  }

  ///Email Uthentication - login
  Future<UserCredential> loginwithEmailandPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw 'Something went wrong, Please try again';
    }
  }

  ///Logout user
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } catch (e) {
      throw 'Something went wrong, Please Try again';
    }
  }
}
