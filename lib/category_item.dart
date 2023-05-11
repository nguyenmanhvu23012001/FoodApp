import'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'categories_page.dart';
import 'models/category.dart';
import 'Foods_pages.dart';
class CategoryItem extends StatelessWidget{
  //1 categoryItem - 1 category object
  Category category;
  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color _color= this.category.color!;
//InkWell = butoon
    return InkWell(
      onTap: (){
        print('Tapped to category Item:${this.category.content}');
        /*Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => FoodsPage(category:this.category)
          ));
      */
        print(this.category);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>FoodsPage(category: this.category),
          ),
        );
        //FoodPage is route name

      },
        splashColor: Colors.deepPurple,// Hiệu ứng nháy khi ấn vào button
        child:Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(this.category.content!,style: Theme.of(context).textTheme.headline6),
              // (
              //     fontSize: 18,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.white
              //   )),
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    _color.withOpacity(0.8),
                    _color
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft
              ),
              color:_color,
              borderRadius: BorderRadius.circular(20)
          ),

        )
    );
  }
}