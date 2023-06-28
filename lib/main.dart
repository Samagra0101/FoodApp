import 'package:flutter/material.dart';
import 'package:practice/firstPage.dart';
import 'loginpage.dart';
import 'package:practice/utils//routes.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(title: 'My First App',
    home: LoginPage(),
    routes: {
      MyRoutes.page0Route: (context) => LoginPage(),
      MyRoutes.page1Route: (context) => FirstPage(),
    },);
  }
}