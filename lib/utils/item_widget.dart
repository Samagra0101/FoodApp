import 'package:flutter/material.dart';
import 'package:practice/models/menu.dart';

class ItemWidget extends StatelessWidget{

  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item!=null);
  @override
  Widget build(BuildContext context){
    return Container();
  }
}