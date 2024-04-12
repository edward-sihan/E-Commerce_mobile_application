import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/data/services/cloud_storage/firabse_storage_service.dart';
import 'package:ecommerce/features/authentication/models/category_model.dart';
import 'package:get/get.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  ///Variables
  final _db = FirebaseFirestore.instance;

  ///Get all categories
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final snapshot = await _db.collection('Categories').get();
      final list = snapshot.docs
          .map((document) => CategoryModel.fromSnapshot(document))
          .toList();
      return list;
    } catch (e) {
      throw 'Something went wrong, Please try again';
    }
  }

  ///Upload Categories to the cloud firbase
  Future<void> uploadDummyData(List<CategoryModel> category) async {
    try {
      //upload all th categories
      final storage = Get.put(MyFirbaseStorageService());

      //loop through category
      for (var category in category) {
        //get image data link
        final file = await storage.getImageDataFromAssets(category.image);

        //upload image get url
        final url =
            await storage.uploadImageData('Categories', file, category.name);

        //Assign url
        category.image = url;

        //Store category in firebase
        await _db
            .collection("Categories")
            .doc(category.id)
            .set(category.toJson());
      }
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
