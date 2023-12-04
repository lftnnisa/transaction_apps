import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/theme.dart';

class PinPage extends StatelessWidget {
  const PinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sha PIN',
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
              child: TextFormField(
                obscureText: true,
                cursorColor: greyColor,
                obscuringCharacter: '•',
                style: blackTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                  letterSpacing: 16,
                ),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
