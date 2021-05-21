class Crypto {
  String id;
  String currency;
  String name;
  String logoUrl;
  String price;

  Crypto(this.id, this.currency, this.name, this.logoUrl, this.price);

  Crypto.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    currency = json['currency'];
    name = json['name'];
    logoUrl = json['logo_url'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "currency": currency,
      "name": name,
      "logo_url": logoUrl,
      "price": price
    };
  }
}
