import 'package:teste/src/Entities/Product.dart';

class ResponseProduct {
  Api? api;
  Product? product;

  ResponseProduct({this.api, this.product});

  ResponseProduct.fromJson(Map<String, dynamic> json) {
    api = json['api'] != null ? Api.fromJson(json['api']) : null;
    product = json['return'] != null ? Product.fromJson(json['return']) : null;
  }
}

class Api {
  String? version;
  String? rand;

  Api({this.version, this.rand});

  Api.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    rand = json['rand'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['version'] = version;
    data['rand'] = rand;
    return data;
  }
}