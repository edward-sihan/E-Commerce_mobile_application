import 'package:ecommerce/common/widgets/icons/my_circular_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyProductQuantityWithAddAndRemove extends StatelessWidget {
  const MyProductQuantityWithAddAndRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: Mysizes.md,
          color: MyHelperFunctions.isDarkMode(context)
              ? MyColors.white
              : MyColors.black,
          backgroundColor: MyHelperFunctions.isDarkMode(context)
              ? MyColors.darkerGrey
              : MyColors.light,
        ),
        const SizedBox(width: Mysizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: Mysizes.spaceBtwItems),
        const MyCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: Mysizes.md,
          color: MyColors.white,
          backgroundColor: MyColors.primary,
        ),
      ],
    );
  }
}
