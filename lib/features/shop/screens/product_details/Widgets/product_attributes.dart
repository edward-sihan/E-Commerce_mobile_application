import 'package:ecommerce/common/widgets/chips/choice_chip.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_test.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class MyProductAtrribute extends StatelessWidget {
  const MyProductAtrribute({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ///selected attributes pricing and description
        MyRoundedContainer(
          padding: const EdgeInsets.all(Mysizes.md),
          backgroundColor: dark ? MyColors.darkGrey : MyColors.grey,
          child: Column(
            children: [
              /// title, price and stock tatus
              Row(
                children: [
                  const MySectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: Mysizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const MyProductTitleText(
                            title: 'price:',
                            smallSize: true,
                          ),
                          const SizedBox(width: Mysizes.spaceBtwItems),

                          ///Actual Price
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: Mysizes.spaceBtwItems,
                          ),

                          ///sale price
                          const MyProductPriceText(price: '20')
                        ],
                      ),
                      Row(
                        children: [
                          const MyProductTitleText(
                              title: 'Stock:', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              /// Variation Description
              const MyProductTitleText(
                title:
                    'This is the description of the MyProduct and it can go up to max 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: Mysizes.spaceBtwItems),

        ///Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: Mysizes.spaceBtwItems / 2),
            Wrap(
              spacing: 0,
              children: [
                MyChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                MyChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                MyChoiceChip(
                    text: 'Red', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(title: 'Size'),
            const SizedBox(height: Mysizes.spaceBtwItems / 2),
            Wrap(
              spacing: 0,
              children: [
                MyChoiceChip(
                    text: 'EU 34', selected: true, onSelected: (value) {}),
                MyChoiceChip(
                    text: 'EU 36', selected: false, onSelected: (value) {}),
                MyChoiceChip(
                    text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            )
          ],
        ),
      ],
    );
  }
}
