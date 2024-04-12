import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:ecommerce/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
//import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ecommerce/features/personalization/screens/address/address.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/features/shop/screens/order/order.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ///header
          MyPrimaryHeaderContainer(
            child: Column(
              children: [
                ///appBar
                MyAppBar(
                  title: Text(
                    'Account',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: MyColors.white),
                  ),
                ),

                ///UserProfile Card
                MyUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen())),
                const SizedBox(
                  height: Mysizes.spaceBtwSections,
                ),
              ],
            ),
          ),

          ///body
          Padding(
            padding: const EdgeInsets.all(Mysizes.defultSpace),
            child: Column(
              children: [
                const MySectionHeading(
                  title: 'Account Setting',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: Mysizes.spaceBtwItems,
                ),
                MySettingsMenuTile(
                  icon: Iconsax.safe_home,
                  title: 'My Address',
                  subTitle: 'Set Shoppping Delivery Address',
                  onTap: () => Get.to(() => const UserAddressScreen()),
                ),
                MySettingsMenuTile(
                  icon: Iconsax.shopping_cart,
                  title: 'My Cart',
                  subTitle: 'Add, remove products and move to checkout',
                  onTap: () {},
                ),
                MySettingsMenuTile(
                  icon: Iconsax.bag_tick,
                  title: 'My Orders',
                  subTitle: 'In Progress and Completed Orders',
                  onTap: () => Get.to(() => const OrderScreen()),
                ),
                MySettingsMenuTile(
                  icon: Iconsax.bank,
                  title: 'Bank Account',
                  subTitle: 'Withdrawed Balance to registered Bank Account',
                  onTap: () {},
                ),
                MySettingsMenuTile(
                  icon: Iconsax.discount_shape,
                  title: 'My Coupons',
                  subTitle: 'List of all the discounted Coupons',
                  onTap: () {},
                ),
                MySettingsMenuTile(
                  icon: Iconsax.notification,
                  title: 'Notifications',
                  subTitle: 'Set any kind of notification message',
                  onTap: () {},
                ),
                MySettingsMenuTile(
                  icon: Iconsax.security_card,
                  title: 'Account Privacy',
                  subTitle: 'Manage Data usage and Connected Accounts',
                  onTap: () {},
                ),
                const SizedBox(height: Mysizes.spaceBtwSections),
                const MySectionHeading(
                  title: 'App Settings',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: Mysizes.spaceBtwItems,
                ),
                MySettingsMenuTile(
                  icon: Iconsax.document_upload,
                  title: 'Load Data',
                  subTitle: 'Upload Data to Your Cloud Firebase',
                  onTap: () {},
                ),
                MySettingsMenuTile(
                  icon: Iconsax.location,
                  title: 'Geolocation',
                  subTitle: 'Set recommended based on location',
                  trailing: Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                MySettingsMenuTile(
                  icon: Iconsax.security_user,
                  title: 'Safe Mode',
                  subTitle: 'Search result is safe for all ages',
                  trailing: Switch(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
                MySettingsMenuTile(
                  icon: Iconsax.image,
                  title: 'HD Image Quality',
                  subTitle: 'Set image quality to be seen',
                  trailing: Switch(
                    value: false,
                    onChanged: (value) {},
                  ),
                ),

                ///Logout button
                const SizedBox(
                  height: Mysizes.spaceBtwSections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => Get.to(() => const OnBoardingScreen()),
                      child: const Text('Logout')),
                ),
                const SizedBox(
                  height: Mysizes.spaceBtwSections * 2.5,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
