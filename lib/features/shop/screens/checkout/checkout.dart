import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/login_signup/success_screen/success_screen.dart';
import 'package:ecommerce/common/widgets/products/cart/coupon_widget.dart';
import 'package:ecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Mysizes.defultSpace),
          child: Column(
            children: [
              const MyCartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: Mysizes.spaceBtwSections,
              ),

              ///Coupon
              const MyCouponCode(),
              const SizedBox(height: Mysizes.spaceBtwSections),

              ///Billing Section
              MyRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(Mysizes.md),
                backgroundColor: dark ? MyColors.black : MyColors.white,
                child: const Column(
                  children: [
                    ///pricing
                    MyBillingAmountSection(),
                    SizedBox(height: Mysizes.spaceBtwItems),

                    ///Divider
                    Divider(),
                    SizedBox(height: Mysizes.spaceBtwItems),

                    ///Payment_method
                    MyBillingPaymentSection(),
                    SizedBox(height: Mysizes.spaceBtwItems),

                    ///address
                    MyBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Mysizes.defultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: MyImages.successfulPaymentIcon,
              title: 'Payment Success',
              subTitle: 'Your Item Will be Shipped Soon',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}
