import 'package:flutter/material.dart';
import 'package:foodapp/models/food.dart';
import './models/category.dart';
final FAKE_CATEGORIES =  [
    Category(id: 1, content: 'Japanese\'s Food',color: Colors.deepOrange),
    Category(id: 2, content: 'Pizza',color: Colors.teal),
    Category(id: 3, content: 'Humburgers',color: Colors.cyanAccent),
    Category(id: 4, content: 'Bread',color: Colors.pinkAccent),
    Category(id: 5, content: 'Milk',color: Colors.deepPurple),
    Category(id: 6, content: 'Vegetable',color: Colors.green),
    Category(id: 7, content: 'Fruit',color: Colors.redAccent),
];
var FAKE_FOODS = [
    Food(
        name: "sushi - 寿司",
        urlImame: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Salmon_Sushi.jpg",
        duration: Duration(minutes:25),
        complexity: Complexity.Medium,
        igredients: ['Sushi-meshi', 'Nori', 'Condiments'],
        categoryId: 1),
    Food(
        name: "Pizza tonda",
        urlImame: "https://www.angelopo.com/filestore/images/pizza-tonda.jpg",
        duration: Duration(minutes:15),
        complexity: Complexity.Hard,
        igredients: ['Tomato sauce','Fontina cheese','Pepperoni','Onions','Mushrooms','pepperoncini'],
        categoryId: 2),
    Food( name: "Makizushi",
        urlImame: "https://upload.wikimedia.org/wikipedia/commons/0/0b/KansaiSushi.jpg",
        complexity: Complexity.Simple,
        duration: Duration(minutes:20),
        categoryId: 1, igredients: []
    ),
    Food(
        name: "Tempura",
        urlImame: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Peixinhos_da_horta.jpg",
        duration: Duration(minutes: 15),
        complexity: Complexity.Simple,
        categoryId: 1, igredients: []),
    Food(
        name: "Neapolitan pizza",
        urlImame: "https://tse1.mm.bing.net/th?id=OIP.Hk_8DGzWZud9hZZ35WTgnQHaEo&pid=Api&P=0",
        duration: Duration(minutes:20),
        complexity: Complexity.Medium,
        igredients: ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
        categoryId: 2),
    Food(
        name: "Sashimi",
        urlImame: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Sashimi_-_Tokyo_-_Japan.jpg/2880px-Sashimi_-_Tokyo_-_Japan.jpg",
        duration: Duration(hours: 1, minutes: 5),
        complexity: Complexity.Medium,
        categoryId: 1, igredients: []),
    Food(
        name: "Homemade Humburger",
        urlImame: "https://upload.wikimedia.org/wikipedia/commons/5/58/Homemade_hamburger.jpg",
        duration: Duration(minutes: 20),
        complexity: Complexity.Hard,
        categoryId: 3, igredients: []),

];
