import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/images/my_circular_image.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),

      ///Body

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Mysizes.defultSpace),
          child: Column(
            children: [
              ///profile pic
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const MyCircularImage(
                      image: MyImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Change Profile Picture"),
                    ),
                  ],
                ),
              ),

              /// details
              const SizedBox(
                height: Mysizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: Mysizes.spaceBtwItems,
              ),
              const MySectionHeading(
                title: 'Profile Infomation',
                showActionButton: false,
              ),
              const SizedBox(height: Mysizes.spaceBtwItems),

              MyProfileMenu(
                title: 'Name',
                value: 'Sihan Edward',
                onPressed: () {},
              ),
              MyProfileMenu(
                title: 'Username',
                value: 'Sihan_Edward',
                onPressed: () {},
              ),

              const SizedBox(
                height: Mysizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: Mysizes.spaceBtwItems,
              ),

              ///Heading Personal Info
              const MySectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: Mysizes.spaceBtwItems,
              ),

              MyProfileMenu(onPressed: () {}, title: 'UserId', value: '45689'),
              MyProfileMenu(
                  onPressed: () {}, title: 'E-mail', value: 'sihan@edward'),
              MyProfileMenu(
                  onPressed: () {}, title: 'Phone Number', value: '0111111111'),
              MyProfileMenu(onPressed: () {}, title: 'Gender', value: 'Male'),
              MyProfileMenu(
                  onPressed: () {},
                  title: 'Date of Birth',
                  value: '23 Aug, 2002'),
              const Divider(),
              const SizedBox(
                height: Mysizes.spaceBtwItems,
              ),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
