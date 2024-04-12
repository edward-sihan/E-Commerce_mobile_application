import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:ecommerce/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce/features/personalization/models/user_model.dart';
import 'package:get/get.dart';
//import 'package:flutter/services.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  ///save user data in firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } catch (e) {
      throw 'Something went wrong, Please try again';
    }
  }

  ///fetch user details base on user ID
  // Future<UserModel> fetchUserDetails() async {
  //   try {
  //     await _db
  //         .collection("Users")
  //         .doc(AuthenticationRepository.instance.authUser?.uid)
  //         .get();
  //     if (documnetSnapshot.exist) {
  //       return UserModel.fromSnapshot(DocumentSnaps)
  //     }
  //   } catch (e) {
  //     throw 'Something went wrong, Please try again';
  //   }
  // }
}
