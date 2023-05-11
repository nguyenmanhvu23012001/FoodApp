import 'package:flutter/material.dart';
import 'package:foodapp/fake_data.dart';
import 'package:foodapp/models/category.dart';
import 'models/food.dart';
import 'detail_food_page.dart';
class FoodsPage extends StatelessWidget{
  static const String routeName = '/FoodsPage';
  final Category? category;
  
  FoodsPage({required this.category});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    List <Food> foods = FAKE_FOODS.where((food) => food.categoryId == this.category?.id).toList();
    return Scaffold(
      appBar: AppBar(//quay lại màn hình
        title: Text('Foods from ${category?.content}'),//Truyền sang contructor
      ),
      body: Center(
        child: Center(
          child: foods.length>0 ? ListView.builder(
              itemCount: foods.length,
              itemBuilder: (context ,index ){
                Food food = foods[index];
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => DetailFoodPage(food : food)
                        )
                    );
                  },
                  child: Stack(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(20),
                          child:  ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            clipBehavior: Clip.hardEdge,
                            child: Center(
                              child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/images/id-loading-1.gif',
                                  image: food.urlImame
                              ),
                            ),
                          )

                      ),//How to show image,
                      Positioned(
                        top: 30,left: 30,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white,width: 2)
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.timer, color: Colors.white,size: 25,),
                              Text('${food.duration.inMinutes} minutes',
                                style: TextStyle(fontSize: 22, color: Colors.white,),
                              )
                            ],
                          ),),
                      ),
                    ],
                  ),
                );
              }
          ):
              Text('No food found',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),)
        )
      ),
    );
  }
}