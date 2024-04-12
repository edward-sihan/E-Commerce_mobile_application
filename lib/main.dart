import 'package:ecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app.dart';

Future<void> main() async {
  //Add Widget Binding
  //final WidgetsBinding widgetsBinding =
  WidgetsFlutterBinding.ensureInitialized();

  //todo: GetX Local Storage
  await GetStorage.init();

  //todo: Await spash
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //todo: Inticalize firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  runApp(const App());
}
