import 'package:crypto_money_api/model/crypto.dart';
import 'package:crypto_money_api/widgets/crypto_list_row.dart';
import 'package:flutter/material.dart';

class CryptoListWidget extends StatefulWidget {
  List<Crypto> crypto = new List<Crypto>();
  CryptoListWidget(List<Crypto> crypto) {
    this.crypto = crypto;
  }

  @override
  State<StatefulWidget> createState() {
    return CryptoListWidgetState();
  }
}

class CryptoListWidgetState extends State<CryptoListWidget> {
  @override
  Widget build(BuildContext context) {
    return buildCryptoList(context);
  }

  Widget buildCryptoList(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height-80,
          child: ListView(
            children: List.generate(widget.crypto.length, (index) {
              return CryptoListRowWidget(widget.crypto[index]);
            }),
          ),
        ),
      ],
    );
  }
}
