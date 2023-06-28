import 'package:flutter/material.dart';
import 'package:practice/models/menu.dart';

class ItemWidget extends StatelessWidget{

  final Item item;

  const ItemWidget({required Key key, required this.item}) : assert(item!=null),super(key: key) ;
  @override
  Widget build(BuildContext context){
    return Material(
      child: ListTile(
        leading: Image.network(item.img),
        title: Text(item.name),
        trailing: Text("\$${item.price}"),
      ),
    );
  }
}