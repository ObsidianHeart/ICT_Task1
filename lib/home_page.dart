import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;

class homepage extends StatelessWidget {
  homepage({super.key});

  final List<ProductData> listofProduct = [];

  Future<void> getPruductFromApi() async {
    try {
      final response = http.get(Uri.parse('https://dummyjson.com/products'));
    } catch (error) {
      debugPrint('Error:  $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

class ProductData {
  String ProductName;
  String ProductPrice;
  String ProductImage;
  double ProductRating;

  ProductData({
    required this.ProductName,
    required this.ProductPrice,
    required this.ProductImage,
    required this.ProductRating,
  });
  factory ProductData.fromAPI(Map<String, dynamic> json) {
    return ProductData(
      ProductName: json['title'] ,
      ProductPrice: json['price'] ,
      ProductImage: json['thumbnail'] ,
      ProductRating: json['rating'].todouble(),
    );
  }
}


