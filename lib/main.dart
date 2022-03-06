import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:stripe_payment_integration/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      'Your Publishable Key'; // Replace with your publishable key
  runApp(GetMaterialApp(
    initialRoute: '/',
    //fade in transition
    transitionDuration: const Duration(milliseconds: 500),
    defaultTransition: Transition.fadeIn,
    getPages: [
      GetPage(
        name: '/',
        page: () => const HomePage(),
      ),
    ],
  ));
}
