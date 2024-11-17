import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class siege_play extends StatelessWidget{
  final top = Random().nextDouble()*(600 - 30 - 100);
  final left = Random().nextDouble()*(300 - 100);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: 600,
        width: 300,
        color: Colors.brown,
        child: Column(
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /*BlocBuilder<stepBloc, stepState>(
                    bloc: stepBloc,
                    builder: (context, stepState){
                      return Text("${stepState.step} steps")},),*/
                  Text('10 steps', style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('/', style: TextStyle(fontSize: 25, color: Colors.white),),
                  //BlocBuilder(builder: calorieBloc, calorieState),
                  Text('100 Kcals', style: TextStyle(fontSize: 25, color: Colors.white),),
                ],
              ),
            SizedBox(
              height: 500,
              width: 280,
              child: Stack(
                children: [
                  Positioned(
                    top : Random().nextDouble()*(600 - 30 - 100),
                    left: Random().nextDouble()*(300 - 100),
                    child: Container(
                    width: 70,
                    height: 74,
                    decoration: ShapeDecoration(
                      color: Colors.yellow,
                      shape: StarBorder(
                        points: 5,
                        innerRadiusRatio: 0.38,
                        pointRounding: 0,
                        valleyRounding: 0,
                        rotation: 0,
                        squash: 0,
                      ),
                    ),
                  ),),
                  Positioned(
                    top: Random().nextDouble()*(600 - 30 - 100),
                    left: Random().nextDouble()*(300 - 100),
                    child: Container(
                    width: 60,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Colors.grey,
                      shape: StarBorder.polygon(sides: 3),
                    ),
                  ),),
                  Positioned(
                    top:Random().nextDouble()*(600 - 30 - 100),
                    left: Random().nextDouble()*(300 - 100),
                    child: Container(
                    width: 50,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Colors.blue,
                      shape: OvalBorder(),
                    ),
                  ),)

                ],
              ),
            )

          ],
        ),
      )
    );
  }
}