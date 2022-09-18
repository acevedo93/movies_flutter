
import 'package:flutter/material.dart';
import 'package:movies/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies in theaters'),
        elevation: 0,
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.search))
        ],
      ),
      body: Column(children: [
        //TODO card swiper
        CardSwiper()

        //horizontal movie list 

      ],)
    );
  }
}