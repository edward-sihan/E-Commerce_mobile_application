import 'package:ecommerce/data/repositories/Categories/category_repository.dart';
import 'package:ecommerce/features/authentication/models/category_model.dart';
import 'package:ecommerce/utils/popups/loaders.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();

  final isLoading = false.obs;
  final _categoryRepository = Get.put(CategoryRepository());
  RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  //// -- load category dart
  Future<void> fetchCategories() async {
    try {
      //show loader
      isLoading.value = true;

      //Fetch categories
      final categories = await _categoryRepository.getAllCategories();

      //update category list
      allCategories.assignAll(categories);

      //filter featured cztegoris
      featuredCategories.assignAll(allCategories
          .where((category) => category.isFeatured && category.parentId.isEmpty)
          .take(8)
          .toList());

      ///
    } catch (e) {
      MyLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      //removes loader
      isLoading.value = false;
    }
  }
  //// --load selected category
  //// --Get category or sub category products
}
