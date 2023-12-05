import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/theme.dart';
import 'package:transaction_apps/ui/widgets/buttons.dart';
import 'package:transaction_apps/ui/widgets/forms.dart';
import 'package:transaction_apps/ui/widgets/transfer_recent_user_item.dart';
import 'package:transaction_apps/ui/widgets/transfer_result_user_item.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormField(
            title: 'by username',
          ),

          buildRecentUsers(),
          buildResult(),
          const SizedBox(
            height: 274,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/images/friend1.png',
            name: 'Lucinta Luna',
            username: 'loenna',
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/images/friend2.png',
            name: 'Sandra Dona',
            username: 'doenna',
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/images/friend3.png',
            name: 'JOko Sabar',
            username: 'joekko',
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            children: const [
              TransferResultUserItem(
                imageUrl: 'assets/images/profile2.png',
                name: 'Lucinta Luna',
                username: 'loenna',
                isVerified: true,
                isSelected: true,
              ),
              TransferResultUserItem(
                imageUrl: 'assets/images/profile2.png',
                name: 'Lucinta Luna',
                username: 'loenna',
                isVerified: true,
              ),
            ],

          ),
        ],
      ),
    );
  }
}
