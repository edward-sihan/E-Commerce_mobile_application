import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MySearchContainer extends StatelessWidget {
  const MySearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: Mysizes.defultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: MyDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(Mysizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? MyColors.dark
                      : MyColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(Mysizes.cardRadiusLg),
              border: showBorder
                  ? Border.all(color: dark ? MyColors.dark : MyColors.grey)
                  : null),
          child: Row(
            children: [
              Icon(icon, color: MyColors.darkerGrey),
              const SizedBox(
                width: Mysizes.spaceBtwItems,
              ),
              Text(text, style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ),
      ),
    );
  }
}
