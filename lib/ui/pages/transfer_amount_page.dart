import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/theme.dart';
import 'package:transaction_apps/ui/widgets/buttons.dart';

class TransferAmountPage extends StatefulWidget {
  const TransferAmountPage({Key? key}) : super(key: key);

  @override
  State<TransferAmountPage> createState() => _TransferAmountPageState();
}

class _TransferAmountPageState extends State<TransferAmountPage> {
  final TextEditingController amountController =
  TextEditingController(text: '0');

  void addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }
    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  void deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text =
            amountController.text.substring(0, amountController.text.length - 1);
        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  Widget _buildTotalAmountText() {
    return Center(
      child: Text(
        'Total Amount',
        style: blackTextStyle.copyWith(
          fontSize: 20,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  Widget _buildAmountInputField() {
    return Align(
      child: SizedBox(
        width: 200,
        child: TextFormField(
          controller: amountController,
          cursorColor: greyColor,
          enabled: false,
          style: blackTextStyle.copyWith(
            fontSize: 36,
            fontWeight: medium,
          ),
          decoration: InputDecoration(
            prefixIcon: Text(
              'Rp',
              style: blackTextStyle.copyWith(
                fontSize: 36,
                fontWeight: medium,
              ),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: greyColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNumericButtons() {
    return Wrap(
      spacing: 40,
      runSpacing: 40,
      children: [
        for (int i = 1; i <= 9; i++)
          CustomInputButton(
            title: i.toString(),
            onTap: () => addAmount(i.toString()),
          ),
        const SizedBox(
          width: 60,
          height: 60,
        ),
        CustomInputButton(
          title: '0',
          onTap: () => addAmount('0'),
        ),
        GestureDetector(
          onTap: deleteAmount,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: numberBackgroundColor,
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back,
                color: blackColor,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContinueButton() {
    return CustomFilledButton(
      title: 'Continue',
      onPressed: () async {
        if (await Navigator.pushNamed(context, '/pin') == true) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/transfer-success', (route) => false);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
          children: [
            const SizedBox(
              height: 60,
            ),
            _buildTotalAmountText(),
            const SizedBox(
              height: 67,
            ),
            _buildAmountInputField(),
            const SizedBox(
              height: 66,
            ),
            _buildNumericButtons(),
            const SizedBox(
              height: 50,
            ),
            _buildContinueButton(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
