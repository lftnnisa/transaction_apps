import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/theme.dart';
import 'package:transaction_apps/ui/widgets/buttons.dart';
import 'package:transaction_apps/ui/widgets/forms.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Paket Data',
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
          CustomFormField(
            title: 'Nomer Hp',
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Packages',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            child: Wrap(
              spacing: 17,
              runSpacing: 17,
              children: const [
                PaketResultItem(
                  amount: 10,
                  price: 100000,
                  isSelected: true,
                ),
                PaketResultItem(
                  amount: 50,
                  price: 150000,
                ),
                PaketResultItem(
                  amount: 15,
                  price: 25000,
                ),
                PaketResultItem(
                  amount: 5,
                  price: 20000,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          CustomFilledButton(
            onPressed: () {
              Navigator.pushNamed(context, ('/data-success'));
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
