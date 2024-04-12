import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/all_products/all_products.dart';

import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';

import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  MyHomeAppBar(),

                  SizedBox(height: Mysizes.spaceBtwSections),

                  //searchbar
                  MySearchContainer(
                    text: 'Search in Store',
                  ),

                  SizedBox(height: Mysizes.spaceBtwSections),

                  //categories
                  Padding(
                    padding: EdgeInsets.only(left: Mysizes.defultSpace),
                    child: Column(
                      children: [
                        ///heading
                        MySectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: Colors.white),
                        SizedBox(height: Mysizes.spaceBtwItems),

                        ///Categories
                        MyHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: Mysizes.spaceBtwSections),
                ],
              ),
            ),

            ///body
            Padding(
              padding: const EdgeInsets.all(Mysizes.defultSpace),
              child: Column(
                children: [
                  const MyPromoSlider(
                    banners: [
                      MyImages.promoBanner1,
                      MyImages.promoBanner2,
                      MyImages.promoBanner3
                    ],
                  ),
                  const SizedBox(
                    height: Mysizes.spaceBtwSections,
                  ),

                  ///heading
                  MySectionHeading(
                      title: 'Popoular Products',
                      onPressed: () => Get.to(() => const AlProducts())),
                  const SizedBox(
                    height: Mysizes.spaceBtwItems,
                  ),

                  ///popular products
                  MyGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const MyProductCardVertical(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: Mysizes.spaceBtwSections,
            ),
          ],
        ),
      ),
    );
  }
}
