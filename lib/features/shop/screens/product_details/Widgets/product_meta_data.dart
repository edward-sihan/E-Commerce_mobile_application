import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/images/my_circular_image.dart';
import 'package:ecommerce/common/widgets/texts/my_brand_title_text_with_verifed_icon.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_test.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyProductMetaData extends StatelessWidget {
  const MyProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price and solo price
        Row(
          children: [
            ///sale tag
            MyRoundedContainer(
              radius: Mysizes.sm,
              backgroundColor: MyColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: Mysizes.sm,
                vertical: Mysizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: MyColors.black),
              ),
            ),
            const SizedBox(width: Mysizes.spaceBtwItems),

            ///price tag
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: Mysizes.spaceBtwItems),
            const MyProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: Mysizes.spaceBtwItems / 1.5),

        ///title
        const MyProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: Mysizes.spaceBtwItems / 1.5),

        ///stock status
        Row(
          children: [
            const MyProductTitleText(title: 'status'),
            const SizedBox(width: Mysizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: Mysizes.spaceBtwItems / 1.5),

        ///brand
        Row(
          children: [
            MyCircularImage(
              image: MyImages.nikeLogo,
              width: 32,
              height: 32,
              overlayColor: dark ? MyColors.white : MyColors.black,
            ),
            const MyBrandTitleWithVerifedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
