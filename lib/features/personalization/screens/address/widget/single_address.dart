import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MySingleAddress extends StatelessWidget {
  const MySingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return MyRoundedContainer(
      padding: const EdgeInsets.all(Mysizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? MyColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? MyColors.primary
              : MyColors.grey,
      margin: const EdgeInsets.only(bottom: Mysizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? MyColors.light
                      : MyColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sihan Hansaja',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: Mysizes.sm / 2),
              const Text('(+94) 4545454545',
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: Mysizes.sm / 2),
              const Text(
                '7/9, Harischandran Mw, Colombo 06',
                // maxLines: 2,
                // overflow: TextOverflow.ellipsis,
                // style: Theme.of(context).textTheme.titleLarge,
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
