import 'package:ecommerce/common/widgets/images/my_rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/my_brand_title_text_with_verifed_icon.dart';
import 'package:ecommerce/common/widgets/texts/product_title_test.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///Image
        MyRoundedImage(
          imageUrl: MyImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(Mysizes.sm),
          backgroundColor: MyHelperFunctions.isDarkMode(context)
              ? MyColors.darkerGrey
              : MyColors.light,
        ),
        const SizedBox(
          width: Mysizes.spaceBtwItems,
        ),

        ///Title ,price and size
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyBrandTitleWithVerifedIcon(title: 'Nike'),
            const Flexible(
              child: MyProductTitleText(
                title: 'Black Sports Shoes',
                maxLines: 1,
              ),
            ),

            ///Atributes
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Color:',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: 'Size:',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'UK 08',
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
