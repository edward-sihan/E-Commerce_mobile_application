import 'package:ecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce/data/repositories/user/user_repository.dart';
import 'package:ecommerce/features/authentication/screens/signup/verfiy_email.dart';
import 'package:ecommerce/features/personalization/models/user_model.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/network_manager.dart';
import 'package:ecommerce/utils/popups/full_screen_loader.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupCotroller extends GetxController {
  static SignupCotroller get instance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();

  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      /// error comming from here (MyFullScreenLoader) -----///

      //start loading
      MyFullScreenLoader.openLoadingDialog(
          'We are Processing Your Information...',
          MyImages.facebook); //myFullScreenLoader error?

      ///check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        MyFullScreenLoader.stopLoading();
        return;
      }

      ///form validation
      if (!signUpFormKey.currentState!.validate()) {
        MyFullScreenLoader.stopLoading();
        return;
      }

      //privacy Policy Check
      if (!privacyPolicy.value) {
        MyLoaders.warningsnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In Order to Create accout, you must have to read and accept the privacy policy and terms of use',
        );
        return;
      }

      //register user in the firbase authentication and save data in the firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      //save authenticated user data in the firebase firesore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: firstName.text.trim(),
        userName: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      MyFullScreenLoader.stopLoading();

      //show Success message
      MyLoaders.succesSnackBar(
          title: 'Congratulations',
          message: 'Your Account has been created! Verify email to continue');

      Get.to(() => VerifyEmailScreen(
            email: email.text.trim(),
          ));
    } catch (e) {
      MyFullScreenLoader.stopLoading();

      MyLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
