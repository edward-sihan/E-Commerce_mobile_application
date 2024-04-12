import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products/rating/rating_indicator.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widget/rating_progress_indicator.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widget/user_review.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text("Reviews & Ratings"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Mysizes.defultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
                "Ratings and Reviews are verified and are from people who use the same type of device that you use"),
            const SizedBox(height: Mysizes.spaceBtwItems),

            ///Overall Product Ratings
            const MyOverallProductRating(),
            const MyRatingBarIndicator(rating: 3.5),
            Text('12,611', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(
              height: Mysizes.spaceBtwSections,
            ),

            /// user Reviews List
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),
      ),
    );
  }
}
