import 'dart:convert';
import 'package:project1/model/products.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';
import 'package:quiver/strings.dart';

class Utilities{
  String url="http://192.168.0.100:300/api/food";
  static List<Products>data=[];
  Future<List<Products>>getProducts()async{
    var res = await http.get(url);
    if(res.statusCode==200){
      var content = res.body;
      print(content.toString());
      var arr=json.decode(content)['food'] as List;

      return arr.map((e) => _fromJson(e)).toList();
    }
    return List.<Products>();
    }
    Products_fromJson(Map<String,dynamic>item){
      return new Products(
        description: item['description'],
        title: item['title'],
        image: item['image'],
        price:double.parse(item['price']));
    }
    static String validateEmail(String vallue){
      if(vallue.isEmpty){
        return "Please enter mail";
      }
      Pattern pattern= 
       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex= new RegExp(pattern);
    if (!regex.hasMatch(vallue))
    return 'Enter Valid Email';
    else
    return null;
    }
    static String confirmPassword(String value, String value2){
      if(!equalsIgnoreCase(value,value2))
      return"Confirm password invalid";
    }
  }
