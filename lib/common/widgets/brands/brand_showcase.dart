import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/brands/brand_card.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyBrandShowCase extends StatelessWidget {
  const MyBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MyRoundedContainer(
      showBorder: true,
      borderColor: MyColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(Mysizes.md),
      margin: const EdgeInsets.only(bottom: Mysizes.spaceBtwItems),
      child: Column(
        children: [
          ///brand with Products count
          const MyBrandCard(showBorder: false),
          const SizedBox(height: Mysizes.spaceBtwItems),

          ///Brand Top 3 Product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: MyRoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(Mysizes.md),
        margin: const EdgeInsets.only(right: Mysizes.sm),
        backgroundColor: MyHelperFunctions.isDarkMode(context)
            ? MyColors.darkGrey
            : MyColors.light,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
