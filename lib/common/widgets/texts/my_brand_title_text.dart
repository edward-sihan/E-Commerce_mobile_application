import 'package:ecommerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class MyBrandTitleText extends StatelessWidget {
  const MyBrandTitleText({
    super.key,
    required this.title,
    this.textAlign = TextAlign.center,
    this.maxLines = 1,
    this.brandTextSize = TextSizes.small,
    this.color,
  });

  final String title;
  final TextAlign? textAlign;
  final int maxLines;
  final TextSizes brandTextSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
              : brandTextSize == TextSizes.large
                  ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
                  : Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
