import 'package:ecommerce/features/authentication/models/category_model.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';

class Mydata {
  static final List<CategoryModel> category = [
    CategoryModel(
        id: '1', name: 'Sports', image: MyImages.sportIcon, isFeatured: true),
    CategoryModel(
        id: '5',
        name: 'Furniture',
        image: MyImages.furnitureIcon,
        isFeatured: true),
    CategoryModel(
        id: '2',
        name: 'Electronics',
        image: MyImages.electronicsIcon,
        isFeatured: true),
    CategoryModel(
        id: '3', name: 'Clothes', image: MyImages.clothIcon, isFeatured: true),
    CategoryModel(
        id: '4', name: 'Animals', image: MyImages.animalIcon, isFeatured: true),
    CategoryModel(
        id: '6', name: 'Shoes', image: MyImages.shoeIcon, isFeatured: true),
    CategoryModel(
        id: '7',
        name: 'Cosmetics',
        image: MyImages.cosmeticsIcon,
        isFeatured: true),
    CategoryModel(
        id: '14',
        name: 'Jewelery',
        image: MyImages.jeweleryIcon,
        isFeatured: true),

    ///Sub Categories
    CategoryModel(
        id: '8',
        name: 'Sports Shoes',
        image: MyImages.sportIcon,
        isFeatured: false,
        parentId: '1'),
    CategoryModel(
        id: '9',
        name: 'Track Suits',
        image: MyImages.sportIcon,
        isFeatured: false,
        parentId: '1'),
    CategoryModel(
        id: '10',
        name: 'Sports equipments',
        image: MyImages.sportIcon,
        isFeatured: false,
        parentId: '1'),

    //furniture
    CategoryModel(
        id: '11',
        name: 'Bedroom Furnture',
        image: MyImages.furnitureIcon,
        isFeatured: false,
        parentId: '5'),
    CategoryModel(
        id: '12',
        name: 'Kitchen Furniture',
        image: MyImages.electronicsIcon,
        isFeatured: false,
        parentId: '5'),
    CategoryModel(
        id: '13',
        name: 'Office furntiure',
        image: MyImages.electronicsIcon,
        isFeatured: false,
        parentId: '5'),

    //Electronics
    CategoryModel(
        id: '14',
        name: 'laptop',
        image: MyImages.electronicsIcon,
        isFeatured: false,
        parentId: '2'),
    CategoryModel(
        id: '15',
        name: 'mobile',
        image: MyImages.electronicsIcon,
        isFeatured: false,
        parentId: '2'),

    //clothes
    CategoryModel(
        id: '16',
        name: 'Sports equipments',
        image: MyImages.clothIcon,
        isFeatured: false,
        parentId: '3'),
  ];
}
