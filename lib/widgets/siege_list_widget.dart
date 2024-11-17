import 'package:flutter/material.dart';

class siege_list extends StatelessWidget{
  final Function()? onPressed;
  const siege_list({super.key, required this.data, this.onPressed});
  final listItem data;
  @override
  Widget build(BuildContext context){
    return GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(data.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 8,),
              Container(
                alignment: Alignment.topLeft,
                child: Text(data.time, style: TextStyle(fontSize: 8),),
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  Container(
                    child: Text(data.home),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Text('vs'),
                  ),
                  Container(
                    child: Text(data.away),
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }
}

class listItem{
  final String title;
  final String time;
  final String home;
  final String away;

  listItem({required this.title, required this.time, required this.home, required this.away});
}