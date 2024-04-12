import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_button.dart';
import 'package:ecommerce/features/authentication/screens/login/widget/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widget/login_header.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: MySpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                ///logo title and & sub title
                const MyLoginHeader(),

                ///Login form
                const MyLoginForm(),

                /// divider
                MyFormDivider(dividerText: MyTexts.orSignInWith.capitalize!),

                const SizedBox(
                  height: Mysizes.spaceBtwItems,
                ),

                /// footer
                const MySocialButtons(),
              ],
            )),
      ),
    );
  }
}
