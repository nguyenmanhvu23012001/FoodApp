import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test  extends StatefulWidget {
  const Test ({Key? key}) : super(key: key);

  @override
  State<Test > createState() => _TestState();
}

class _TestState extends State<Test>{

  late int count;
  @override
  void initState() {
    print("Đang khởi tạo state cho wd");
    setState(() {
      count = 0;
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Text(count.toString()),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                count =  count +1;
              });
            },
            child: Text("Tăng"),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


}

