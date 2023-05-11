import 'package:flutter/material.dart';
import 'package:foodapp/Foods_pages.dart';
import 'package:foodapp/categories_page.dart';
import 'package:google_fonts/google_fonts.dart';



void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App with Navigation',
      initialRoute: '/',//this is root"
      routes: {
        'CatagoriesPage':(context) => CategoriesPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: 'fontCuaVu',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 52, 52, 1)
          ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(20, 52, 52, 1)
          ),
          headline6:
            GoogleFonts.lobster( fontSize: 25,color: Colors.white ),
        )
      ),
      home:Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Food\'s Catagories'),
        ),
        body:SafeArea(child: CategoriesPage(),),

      ),
    );
  }
}
// Center(
// child: Text('Food App with Navigation',style: TextStyle(fontSize: 30),),

