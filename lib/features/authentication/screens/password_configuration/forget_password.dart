import 'package:ecommerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(Mysizes.defultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///headings
            Text(MyTexts.forgotPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: Mysizes.spaceBtwItems),
            Text(MyTexts.forgotPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: Mysizes.spaceBtwSections * 2),

            ///Text Field

            TextFormField(
              decoration: const InputDecoration(
                labelText: MyTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            const SizedBox(height: Mysizes.spaceBtwSections),

            /// Submit button

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const ResetPassword()),
                child: const Text(MyTexts.submit),
              ),
            )
          ],
        ),
      ),
    );
  }
}
