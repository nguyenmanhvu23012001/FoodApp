import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'category.dart';
class Food{
  int? id;
  String name;
  String urlImame;
  Duration duration;//time to finish this food
  Complexity? complexity;
  // one foods has many ingredients
  List<String> igredients = <String>[];
  int? categoryId;
  //constructor:
  Food({
    required this.name,
    required this.urlImame,
    required this.duration,
    this.complexity,
    required this.igredients,
    this.categoryId,
  }){
    //id is "auto - increment
    this.id = Random().nextInt(1000);
  }
}
enum Complexity{
  Simple,
  Medium,
  Hard
}