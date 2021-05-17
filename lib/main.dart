import 'package:flutter/material.dart';
import 'package:socket_app/screens/filter_screen.dart';
import 'package:socket_app/screens/log_in_screen.dart';
import 'package:socket_app/screens/sign_up_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LogInScreen(),
        routes: {
       LogInScreen.routeName:(ctx)=>LogInScreen(),
      SignUpScreen.routeName:(ctx)=>SignUpScreen(),

        });
  }
}
