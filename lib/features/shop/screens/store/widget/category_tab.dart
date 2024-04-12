import 'package:ecommerce/common/widgets/brands/brand_showcase.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyCategoryTab extends StatelessWidget {
  const MyCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(Mysizes.defultSpace),
          child: Column(
            children: [
              ///Brands
              const MyBrandShowCase(
                images: [
                  MyImages.productImage1,
                  MyImages.productImage2,
                  MyImages.productImage3
                ],
              ),
              const MyBrandShowCase(
                images: [
                  MyImages.productImage1,
                  MyImages.productImage2,
                  MyImages.productImage3
                ],
              ),
              const SizedBox(height: Mysizes.spaceBtwItems),
              MySectionHeading(
                title: 'You might like',
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(
                height: Mysizes.spaceBtwItems,
              ),
              MyGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const MyProductCardVertical(),
              ),
              const SizedBox(
                height: Mysizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
