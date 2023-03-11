import 'package:flutter/material.dart';
class Products{
  int id;
  String title;
  String description;
  String image;
  double price;

  Products({this.id,this.title,this.description,this.image,this.price});
  static List<Products> init(){
    List<Products>data = [
      Products(id: 1,title: "Bread",description: "a",image: )
    ]
  }
}