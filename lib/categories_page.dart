import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foodapp/category_item.dart';
import 'package:foodapp/fake_data.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}
class _CategoriesPageState extends State<CategoriesPage> {
  static const String routeName = '/CategoriesPage';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        padding: EdgeInsets.all(12),
        children:FAKE_CATEGORIES.map((eachCategory) => CategoryItem(category: eachCategory)).toList(),
          //This is CategoryItem
          //convert categories array => CategoryItem array =>use map
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,//độ rộng max 300
          childAspectRatio: 3/2,//rộng 3 phần / cao 2 phần
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("chay vao day");
  }
}
