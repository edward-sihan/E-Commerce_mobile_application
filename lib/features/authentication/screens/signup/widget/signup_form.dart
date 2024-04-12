import 'package:ecommerce/features/authentication/controllers/signup/signup_controller.dart';
//import 'package:ecommerce/features/authentication/screens/signup/verfiy_email.dart';
import 'package:ecommerce/features/authentication/screens/signup/widget/terms_condition_checkbox.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MySignupForm extends StatelessWidget {
  const MySignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controlller = Get.put(SignupCotroller());
    return Form(
      key: controlller.signUpFormKey,
      child: Column(
        children: [
          Row(
            children: [
              //firste name
              Expanded(
                child: TextFormField(
                  controller: controlller.firstName,
                  validator: (value) =>
                      MyValidator.validateEmptyText(value, 'First name'),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: MyTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),

              const SizedBox(width: Mysizes.spaceBtwInputFields),

              //last name
              Expanded(
                child: TextFormField(
                  controller: controlller.lastName,
                  validator: (value) =>
                      MyValidator.validateEmptyText(value, 'Last name'),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: MyTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: Mysizes.spaceBtwInputFields),

          //username
          TextFormField(
            validator: (value) =>
                MyValidator.validateEmptyText(value, 'Username'),
            controller: controlller.userName,
            expands: false,
            decoration: const InputDecoration(
              labelText: MyTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          const SizedBox(height: Mysizes.spaceBtwInputFields),

          //Email
          TextFormField(
            validator: (value) => MyValidator.validateEmail(value),
            controller: controlller.email,
            //expands: false,
            decoration: const InputDecoration(
              labelText: MyTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(height: Mysizes.spaceBtwInputFields),

          //Phone Number
          TextFormField(
            validator: (value) => MyValidator.validatePhoneNumber(value),
            controller: controlller.phoneNumber,
            //expands: false,
            decoration: const InputDecoration(
              labelText: MyTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(height: Mysizes.spaceBtwInputFields),

          //password
          Obx(
            () => TextFormField(
              validator: (value) => MyValidator.validatePassword(value),
              //expands: false,
              controller: controlller.password,
              obscureText: controlller.hidePassword.value,
              decoration: InputDecoration(
                  labelText: MyTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                      onPressed: () => controlller.hidePassword.value =
                          !controlller.hidePassword.value,
                      icon: Icon(controlller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye))),
            ),
          ),

          const SizedBox(height: Mysizes.spaceBtwInputFields),

          //terms and condition check box
          const MyTermsAndConditons(),

          const SizedBox(height: Mysizes.spaceBtwSections),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controlller.signup(),
              child: const Text(MyTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}
