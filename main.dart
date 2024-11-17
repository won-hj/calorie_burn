import 'package:calorie_burn/screens/login_screen.dart';
import 'package:calorie_burn/screens/home_screen.dart';
import 'package:calorie_burn/screens/sieges/select_sieges_screen.dart';
import 'package:calorie_burn/screens/sieges/siege_play_screen.dart';
import 'package:calorie_burn/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  //runApp(const login()); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  final GoRouter _goRouter = GoRouter(
      routes: [
        GoRoute(path: '/', builder: (context, state)=>login()),
        GoRoute(path: '/home', builder: (context, state)=>Home()),
        GoRoute(path: '/signup', builder: (context, state)=>signup()),
        GoRoute(path: '/selectSiege', builder: (context, state)=>select_seiges()),
        GoRoute(path: '/siegePlay', builder: (context, state)=>siege_play()),
  ]);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _goRouter,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
