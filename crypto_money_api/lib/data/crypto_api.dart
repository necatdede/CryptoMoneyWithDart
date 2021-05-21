import 'package:http/http.dart' as http;

class CryptoApi{

  static Future getCrypto() async
  {
    return http.get(Uri.parse("https://api.nomics.com/v1/currencies/ticker?key=223c4b7a5788648e3447ae43baf3c5a745b3adab"));
  }

}