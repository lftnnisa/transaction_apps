import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/theme.dart';
import 'package:transaction_apps/ui/widgets/bank_item.dart';
import 'package:transaction_apps/ui/widgets/buttons.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Up',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Wallet',
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
                    '8008 2810 2002',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Lifta Annisa',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BankItem(
              title: 'Bank Mandiri',
              imageUrl: 'assets/images/bank_mandiri.png',
            isSelected: true,
          ),
          const BankItem(
            title: 'Bank BCA',
            imageUrl: 'assets/images/bank_bca.png',
          ),
          const BankItem(
            title: 'Bank BNI',
            imageUrl: 'assets/images/bank_bni.png',
          ),
          const BankItem(
            title: 'Bank OCBC',
            imageUrl: 'assets/images/bank_ocbc.png',
          ),
          const SizedBox(
            height: 12,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount');
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
