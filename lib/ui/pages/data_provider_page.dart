import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/theme.dart';
import 'package:transaction_apps/ui/widgets/buttons.dart';
import 'package:transaction_apps/ui/widgets/data_provider_item.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Internet Data',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 24,
          ),
          Text(
            'From Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                children: [
                  Text(
                    '8088 2810 2810',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Balance: Rp 100.000',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Provider',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          DataProviderItem(
            title: 'Telkomsel',
            imgUrl: 'assets/images/telkomsel.png',
            isSelected: true,
          ),
          DataProviderItem(
            title: 'Indosat',
            imgUrl: 'assets/images/indosat.png',
          ),
          DataProviderItem(
            title: 'Singtel',
            imgUrl: 'assets/images/singtel.png',
          ),
          const SizedBox(
            height: 60,
          ),
          CustomFilledButton(
            onPressed: () {
              Navigator.pushNamed(context, '/data-package');
            },
            title: 'Continue',
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
