import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_button.dart';
import 'package:ecommerce/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Mysizes.defultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Title
              Text(MyTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: Mysizes.spaceBtwSections),

              ///Form
              const MySignupForm(),

              const SizedBox(
                height: Mysizes.spaceBtwSections,
              ),

              ///divider
              MyFormDivider(dividerText: MyTexts.orSignUpWith.capitalize!),

              const SizedBox(
                height: Mysizes.spaceBtwSections,
              ),

              ///socail button
              const MySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
