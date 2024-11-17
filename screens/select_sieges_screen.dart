import 'package:calorie_burn/main.dart';
import 'package:calorie_burn/widgets/siege_list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class select_seiges extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return selectState();
  }
}

class selectState extends State<select_seiges>{
  int steps = 0, cals = 0;

  //임시
  List<listItem> items = [
    listItem(title: 'Chicken War', time: '24.xx.xx~24.xx.xx', home: 'School 1', away: 'School 2'),
    listItem(title: 'Duck Battle', time: '24.xx.xx~24.xx.xx', home: 'School A', away: 'School B'),
    listItem(title: 'Turkey Clash', time: '24.xx.xx~24.xx.xx', home: 'School 1', away: 'School A'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.brown,
        height: 600,
        width: 300,
        child: Column(
              children: [
                Container(
                  child: Text("SIEGE", style: TextStyle(fontSize: 50, color: Colors.white),),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                      itemBuilder: (context, index){
                      return siege_list(data: items[index], onPressed: (){
                        context.go('/siegePlay');
                        print('버튼클릭 ${items[index].title}');

                      });
                      }),
                )
              ],
        ),
      ),
    );
  }
}