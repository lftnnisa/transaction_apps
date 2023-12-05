import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/theme.dart';
import 'package:transaction_apps/ui/pages/data_package_page.dart';
import 'package:transaction_apps/ui/pages/data_provider_page.dart';
import 'package:transaction_apps/ui/pages/home_page.dart';
import 'package:transaction_apps/ui/pages/onboarding_pages.dart';
import 'package:transaction_apps/ui/pages/pin_page.dart';
import 'package:transaction_apps/ui/pages/profile_page.dart';
import 'package:transaction_apps/ui/pages/splash_page.dart';
import 'package:transaction_apps/ui/pages/topup_amount_page.dart';
import 'package:transaction_apps/ui/pages/topup_page.dart';
import 'package:transaction_apps/ui/pages/topup_success.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: lightBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
        ),
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/pin': (context) => const PinPage(),
        '/topup': (context) => const TopupPage(),
        '/topup-amount': (context) => const TopupAmountPage(),
        'topup-success': (context) => const TopupSuccessPage(),
        '/provider': (context) => const DataProviderPage(),
        '/data-package': (context) => const DataPackagePage(),

      },
    );
  }
}
