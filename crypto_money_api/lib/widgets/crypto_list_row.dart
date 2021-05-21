import 'dart:math';

import 'package:crypto_money_api/model/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CryptoListRowWidget extends StatelessWidget {
  Crypto crypto;
  CryptoListRowWidget(this.crypto);
  @override
  Widget build(BuildContext context) {
    return buildCryptoItemCard(context);
  }

  Widget buildCryptoItemCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue.shade50,
              Colors.blue.shade100,
              Colors.blue.shade200
            ],
          ),
        ),
        child: InkWell(
          onTap: () {},
          child: ListTile(
            title: Text(
              crypto.name,
            ),
            subtitle: Text(crypto.currency),
            leading: showImage(crypto.logoUrl),
            trailing: Text(crypto.price),
          ),
        ),
      ),
    );
  }

  showImage(String logoUrl) {
    String kontrol = logoUrl.substring(logoUrl.length - 3);
    if (kontrol == "svg") {
      return SvgPicture.network(
        logoUrl,
        height: 50,
        width: 50,
      );
    } else {
      return Image.network(
        logoUrl,
        height: 50,
        width: 50,
      );
    }
  }
}
