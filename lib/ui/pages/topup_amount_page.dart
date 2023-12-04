import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/theme.dart';

class TopupAmountPage extends StatefulWidget {
  const TopupAmountPage({Key? key}) : super(key: key);

  @override
  State<TopupAmountPage> createState() => _TopupAmountPageState();
}

class _TopupAmountPageState extends State<TopupAmountPage> {
  final TextEditingController amountController = TextEditingController();

  addAmount(String number) {
    if (amountController.text.length == '0') {
      amountController.text == '';
    }
		setState(() {
        amountController.text = amountController.text + number;
      });

		deleteAmount() {
			if (amountController.text.isNotEmpty) {
				setState(() {
					amountController.text = amountController.text.substring(0, amountController.text.length - number;
					if (amountController.text == '') {
						amountController.text = '0';
					}
				});
			}
		}
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter PIN',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              SizedBox(
                width: 200,
              ),
            ],
          ),
        ),
      ),

    );
  }
}
