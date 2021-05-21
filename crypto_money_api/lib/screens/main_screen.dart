import 'dart:convert';

import 'package:crypto_money_api/data/crypto_api.dart';
import 'package:crypto_money_api/model/crypto.dart';
import 'package:crypto_money_api/widgets/crypto_list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State {
  List<Crypto> crypto = new List<Crypto>();

  @override
  void initState() {
    getCrypto();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Crypto App",
          style: TextStyle(color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade100,
                Colors.blue.shade200,
                Colors.blue.shade300
              ],
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: CryptoListWidget(crypto),
    );
  }

  void getCrypto() {
    CryptoApi.getCrypto().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        this.crypto = list.map((crypto) => Crypto.fromJson(crypto)).toList();
      });
    });
  }
}
