import 'package:flutter/material.dart';
import 'package:practice/drawer.dart';
import 'package:practice/models/menu.dart';
import 'package:practice/utils/item_widget.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override

  Widget build(BuildContext context) {
    final dummyList=List.generate(20, (index) => MenuModel.items[0]);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
          backgroundColor: Colors.teal,

        ),
        body:






                   Container(
                     color: Colors.white,
                     child: ListView.builder(
                      itemCount: MenuModel.items.length,
                      itemBuilder: (context,index){
                        return ItemWidget(
                          item: MenuModel.items[index],
                        );
                      },

        ),
                   ),



        drawer: MyDrawer(),
      ),
    );
  }
}