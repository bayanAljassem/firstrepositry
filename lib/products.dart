import 'dart:html';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Product {
  final int id;
  final String title;
  final String description;
  final double price;
//  File image;

  Product(
      {required this.id,
      required this.title,
    //  required this.image,
      required this.description,
      required this.price});
}

class Products with ChangeNotifier {
  List<Product> productsList = [];
//  File image;

  void add(String title, String description, double price) {
    productsList.add(Product(
        id: 1,
        title: title,
  //      image: image,
        description: description,
        price: price));
    notifyListeners();
  }

  //Future getImage (ImageSource src) async{
  //  final pickedFile =await  ImagePicker().getImage(source: src);
 // }
}
