import 'package:calorie_burn/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _homeState();
  }

}

class _homeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    bool _isPortrait = true;

    return Scaffold(
      body: Container(
        color: Colors.brown,
          width: 300,
          height: 600,
          child:Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(child: Container(
                      //margin: EdgeInsets.only(left: MediaQuery.of(context).size.width)   ,
                      //alignment: Alignment.center,
                      width: 35,
                      height: 35,
                      color: Colors.grey,
                    ),),
                    SizedBox(width: 10), // 간격 추가
                    ClipRect(
                      child: Container(
                        width: 200,
                        height: 50,
                        color: Colors.grey,
                        child: Text('cliprect'),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                child: SizedBox(
                    width: 250,
                    height: 400,
                    child: Container(

                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
                      alignment: Alignment.center,
                      child: Stack(
                          children: [
                            InkWell(
                              onTap:(){
                                context.go('/selectSiege');
                              },
                              child: ClipRect(
                                child: Container(
                                  width: 135,
                                  height: 137,
                                  color: Colors.blue,
                                ),),
                            ),
                            ElevatedButton(
                              onPressed: ()=>
                              {
                                //portrait 세로 landscape 가로
                                _isPortrait ?
                                SystemChrome.setPreferredOrientations([
                                  DeviceOrientation.landscapeRight,
                                  DeviceOrientation.landscapeLeft
                                ]) :
                                SystemChrome.setPreferredOrientations([
                                  DeviceOrientation.portraitUp,
                                  DeviceOrientation.portraitDown
                                ]),
                                setState(() {
                                  print('before: $_isPortrait');
                                  _isPortrait = !_isPortrait;
                                  print('after: $_isPortrait');

                                })
                              }
                            ,
                              child: Text(_isPortrait ? '가로':'세로'),)
                          ]
                      ),

                    )


                ),
              ),


            ],
          )
      ),
    );
  }
}