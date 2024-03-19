import 'package:dukaan/Screens/additional_info.dart';
import 'package:dukaan/Screens/catalogue.dart';
import 'package:dukaan/Screens/dukaan_premium.dart';
import 'package:dukaan/Screens/manage_store.dart';
import 'package:dukaan/Screens/order.dart';
import 'package:dukaan/Screens/payment.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AdditionalInfoScreen()));
              },
              icon: const Icon(Icons.info)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ManageStoreScreen()));
              },
              icon: const Icon(Icons.store)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PaymentScreen()));
              },
              icon: const Icon(Icons.payments)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PremiumScreen()));
              },
              icon: const Icon(Icons.workspace_premium)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrderScreen()));
              },
              icon: const Icon(Icons.inventory)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ScreenSix()));
              },
              icon: const Icon(Icons.list))
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome',
          style: TextStyle(
            color: Colors.blue,
            fontStyle: FontStyle.italic,
            fontSize: 80,
          ),
        ),
      ),
    ));
  }
}
