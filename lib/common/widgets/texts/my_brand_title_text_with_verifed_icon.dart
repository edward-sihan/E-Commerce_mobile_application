import 'package:ecommerce/common/widgets/texts/my_brand_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyBrandTitleWithVerifedIcon extends StatelessWidget {
  const MyBrandTitleWithVerifedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.textColor,
    this.iconColor = MyColors.primary,
  });

  final Color? textColor, iconColor;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyBrandTitleText(
            title: title,
            textAlign: textAlign,
            maxLines: maxLines,
            brandTextSize: brandTextSize,
            color: textColor),
        const SizedBox(width: Mysizes.xs),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: Mysizes.iconXs,
        ),
      ],
    );
  }
}
