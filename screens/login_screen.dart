import 'package:calorie_burn/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _idController = TextEditingController();
    final TextEditingController _pwController = TextEditingController();

    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
      width: 300,
      height: 600,
      color: Colors.brown,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: screenHeight*0.1),
            child: const SizedBox(
            width: 260,
            height: 200,
            child: Text(
              'Calorie\nBurn.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
              textAlign: TextAlign.center,
            ),
          ),),
          ClipRect(child: Container(
              width: 200,
              height: 65,
              child: TextField(
                controller: _idController,
                decoration: InputDecoration(labelText: 'E-mail'),
              )
          ),),
          ClipRect(child: Container(
              width: 200,
              height: 65,
              child: TextField(
                controller: _pwController,
                decoration: InputDecoration(labelText:  "Password"),
              )
          ),),
          Container(
            margin: EdgeInsets.only(top:30),
            child: ElevatedButton(onPressed: ()=>{
              context.go('/home')
            }, child: Text('sign in')),
          ),
          Container(
              margin: EdgeInsets.only(top: screenHeight*0.07),
              child: RichText(text: TextSpan(
              text: 'Click ',
              style: TextStyle(color: Colors.white, fontSize: 13),
              children: [
                TextSpan(
                    text: "here",
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = ()=>{
                        context.go('/signup')
                      },
                    children: [
                      TextSpan(
                          text: ' for sign-up',
                          style: TextStyle(color: Colors.white, fontSize: 13)
                      )
                    ]
                )
              ]
          ),)),




        ],
      ),
    ),);
  }
}

/*
      child: Column(
        children: [
          SizedBox(
            width: 260,
            height: 200,
            child: Text(
              'Calorie\nBurn.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 96,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Container( // 아이디/이메일
              width: 200,
              height: 65,
              child: TextField(
                controller: _idController,
                decoration: InputDecoration(labelText: 'Email'),
              ) //BoxDecoration(color: Colors.white),
          ),
          Container( // 비밀번호
              width: 200,
              height: 65,
              //decoration: BoxDecoration(color: Colors.white),
              child: TextField(
                controller: _pwController,
                decoration: InputDecoration(labelText: "Password"),
              )
          ),
          Container( //로그인
            width: 200,
            height: 65,
            child: ElevatedButton(
              onPressed: (){
                String id = _idController.text;
                String pw = _pwController.text;
                // 아이디 비밀번호 비교
                //NavigationBar.push()
                if(true) {
                  context.go('/home');
                }
                else {
                  //context.go('/home');

                }
              }, child: null,
            ),
          ),

          Text(
            'sign up',
            style: TextStyle(
              color: Color(0xFFFFFEFE),
              fontSize: 32,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ],

      ),

* */
