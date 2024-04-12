import 'package:ecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/helpers/network_manager.dart';
import 'package:ecommerce/utils/popups/full_screen_loader.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginContoller extends GetxController {
  ///variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localSorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  // @override
  // void onInit() {
  //   email.text = localSorage.read('REMEMBER_ME_EMAIL');
  //   password.text = localSorage.read('REMEMBER_ME_PASSWORD');
  //   super.onInit();
  // }

  ///Email and Password SignIn
  Future<void> emailAndPasswordSignIn() async {
    try {
      MyFullScreenLoader.openLoadingDialog(
          'Logging you in ...', MyImages.acerlogo);

      ///check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        MyFullScreenLoader.stopLoading();
        return;
      }

      ///validation
      if (!loginFormKey.currentState!.validate()) {
        MyFullScreenLoader.stopLoading();
        return;
      }

      if (rememberMe.value) {
        localSorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localSorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      final userCredential = await AuthenticationRepository.instance
          .loginwithEmailandPassword(email.text.trim(), password.text.trim());

      MyFullScreenLoader.stopLoading();

      ///redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      MyFullScreenLoader.stopLoading();
      MyLoaders.errorSnackBar(title: 'Oh snap', message: e.toString());
    }
  }
}
