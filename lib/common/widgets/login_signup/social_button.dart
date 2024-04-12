import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MySocialButtons extends StatelessWidget {
  const MySocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MyColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: Mysizes.iconMd,
              height: Mysizes.iconMd,
              image: AssetImage(MyImages.google),
            ),
          ),
        ),
        const SizedBox(width: Mysizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MyColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: Mysizes.iconMd,
              height: Mysizes.iconMd,
              image: AssetImage(MyImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
