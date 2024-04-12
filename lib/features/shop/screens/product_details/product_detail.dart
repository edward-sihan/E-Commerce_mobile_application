import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/Widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details/Widgets/product_attributes.dart';
import 'package:ecommerce/features/shop/screens/product_details/Widgets/product_detail_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/Widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/Widgets/rating_share_widget.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
//import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const MyBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product Image Slider
            const MyProductImageSlider(),

            /// Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: Mysizes.defultSpace,
                  left: Mysizes.defultSpace,
                  bottom: Mysizes.defultSpace),
              child: Column(
                children: [
                  ///Rating and Share
                  const MyRatingAndShare(),

                  ///price Title ,stock and brand
                  const MyProductMetaData(),

                  ///attributes
                  const MyProductAtrribute(),
                  const SizedBox(height: Mysizes.spaceBtwSections),

                  ///checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Checkout')),
                  ),
                  const SizedBox(height: Mysizes.spaceBtwItems),

                  ///description
                  const MySectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: Mysizes.spaceBtwItems),
                  const ReadMoreText(
                    'this is the description for the Blue Nike Sleeve less Vest, There are more things that can be added but i dont want to add',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  ///reviews
                  const Divider(),
                  const SizedBox(height: Mysizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MySectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          icon: const Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          ),
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen())),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
