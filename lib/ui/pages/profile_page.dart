import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/theme.dart';
import 'package:transaction_apps/ui/pages/profile_menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/profile.png',
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Lifta Annisa',
                ),
                const SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/icons/edit_profile.png',
                  title: 'Edit Profile',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/icons/pin.png',
                  title: 'My Pin',
                  onTap: () {
                    Navigator.pushNamed(context, '/pin');
                  },
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/icons/wallet.png',
                  title: 'Wallet Setting',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/icons/help.png',
                  title: 'Help Center',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/icons/logout.png',
                  title: 'Log Out',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
