import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/shared_methods.dart';
import 'package:transaction_apps/shared/theme.dart';
import 'package:transaction_apps/ui/widgets/buttons.dart';

class PinPage extends StatefulWidget {
  const PinPage({Key? key}) : super(key: key);

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');
  String pin = '';

  void addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }

    if (pinController.text.length == 6) {
      if (pinController.text == '123123') {
        Navigator.pop(context, true);
      } else {
        showCustomSnackBar(context, 'PIN yang anda masukkan salah');
      }
    }
  }

  void deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  Widget _buildTotalAmountText() {
    return Text(
      'Enter PIN',
      style: blackTextStyle.copyWith(
        fontSize: 20,
        fontWeight: semiBold,
      ),
    );
  }

  Widget _buildPinInputField() {
    return SizedBox(
      width: 200,
      child: TextFormField(
        controller: pinController,
        obscureText: true,
        cursorColor: greyColor,
        enabled: false,
        style: blackTextStyle.copyWith(
          fontSize: 36,
          fontWeight: medium,
          letterSpacing: 12,
        ),
        decoration: InputDecoration(
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: lightBackgroundColor,
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
            onTap: () => addPin(i.toString()),
          ),
        const SizedBox(
          width: 60,
          height: 60,
        ),
        CustomInputButton(
          title: '0',
          onTap: () => addPin('0'),
        ),
        GestureDetector(
          onTap: deletePin,
          child: Container(
            width: 70,
            height: 70,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTotalAmountText(),
              const SizedBox(
                height: 72,
              ),
              _buildPinInputField(),
              const SizedBox(
                height: 66,
              ),
              _buildNumericButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
