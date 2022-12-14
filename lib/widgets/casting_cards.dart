import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  const CastingCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 158,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) =>  _CastCard()
      )

    );
  }
}


class _CastCard extends StatelessWidget {
  const _CastCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: 100,
        height: 100,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/150X300'),
                height: 130,
                width: 100,
                fit: BoxFit.cover
              )
            ),
            SizedBox(height: 5,),
            Text('Jhon wick', maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,)
          ],
        ),
      );
  }
}