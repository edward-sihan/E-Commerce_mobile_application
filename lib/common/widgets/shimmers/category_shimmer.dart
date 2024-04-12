import 'package:ecommerce/common/widgets/shimmers/shimmer.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyCategoryShimmer extends StatelessWidget {
  const MyCategoryShimmer({
    super.key,
    this.itemCount = 6,
  });

  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: itemCount,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (_, __) =>
            const SizedBox(width: Mysizes.spaceBtwItems),
        itemBuilder: (_, __) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Image
              MyShimmerEffect(width: 55, height: 55, radius: 55),
              SizedBox(height: Mysizes.spaceBtwItems / 2),

              ///Text
              MyShimmerEffect(width: 55, height: 8),
            ],
          );
        },
      ),
    );
  }
}
