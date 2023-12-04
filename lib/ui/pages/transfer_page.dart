import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/theme.dart';
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
            isShowTitle: false,
          ),
          buildRecentUsers(),
          buildResult(),
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
            imageUrl: 'assets/images/profile1',
            name: 'Lucinta Luna',
            username: 'loenna',
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/images/profile2',
            name: 'Lucinta Luna',
            username: 'loenna',
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imageUrl: 'assets/images/profile3',
            name: 'Lucinta Luna',
            username: 'loenna',
            isVerified: true,
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
            children: const [
              TransferResultUserItem(
                imageUrl: 'assets/images/profile2',
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
