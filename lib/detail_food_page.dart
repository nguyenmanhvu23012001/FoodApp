import 'package:flutter/material.dart';
import 'package:foodapp/models/food.dart';
class DetailFoodPage extends StatelessWidget{
  Food food;
  DetailFoodPage({required this.food});
  @override
  Widget build(BuildContext context) {
    print('ingredients:${food.igredients}');
      return Scaffold(
        appBar: AppBar(title: Text('${food.name}'),),
        body: Column(
          children: <Widget>[
            Center(
              child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/id-loading-1.gif',
                  image: food.urlImame,
              )
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child:Text('Ingredients',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            ),
            Expanded(child: ListView.builder(
                itemCount: this.food.igredients.length,
                itemBuilder: (context,index){
                  String ingredient = this.food.igredients[index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text('#${index+1}',style: TextStyle(fontSize: 22,color: Colors.black),)
                    ),
                    title: Text(ingredient,style: TextStyle(fontSize: 20),),
                  );
                }
            ))


          ],
        )

      );
  }

}