import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(child: SingleChildScrollView(
      child: Container(
        child: Column(
          children:[
            headerScreen(context),
            // SignForm(),
            footerScreen(context),
          ],
      ),
      ),
    ));
  }
  Widget headerScreen(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.2,
      alignment: Alignment.bottomRight,
      child: Image(image: AssetImage('images/dish.png')),
      );
  }
  Widget footerScreen(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.bottomLeft,
      child: Image(image: AssetImage('images/dish2.png')),
      );
  }
  }