import 'package:flutter/material.dart';
import 'package:movies/providers/movies_provider.dart';
import 'package:provider/provider.dart';

import 'screens/screens.dart';

void main() => runApp(MyApp());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => MoviesProvider())
    ])
  }
}

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