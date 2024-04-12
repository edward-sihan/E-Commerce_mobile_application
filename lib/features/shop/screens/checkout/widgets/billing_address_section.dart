import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class MyBillingAddressSection extends StatelessWidget {
  const MyBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MySectionHeading(
            title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text(
          'Sihan Hansaja',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(width: Mysizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: Mysizes.spaceBtwItems),
            Text('+94 1221212332',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(width: Mysizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: Mysizes.spaceBtwItems),
            Expanded(
              child: Text('7/9,Harischandra Mw,Colombo 06',
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
      ],
    );
  }
}
