import 'package:crypto_money_api/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CryptoApp());
}
//https://api.nomics.com/v1/markets?key=223c4b7a5788648e3447ae43baf3c5a745b3adab
class CryptoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
