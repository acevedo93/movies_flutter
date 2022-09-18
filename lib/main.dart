import 'package:flutter/material.dart';

import 'screens/screens.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute:'home' ,
      routes:   {
        'home': ( _ ) =>  HomeScreen(),
        'details': ( _ ) => DetailsScreen()
      },
      theme: ThemeData.dark().copyWith(
        appBarTheme: const  AppBarTheme(
          color:  Colors.blueGrey
        )
      ),
    );
  }
}