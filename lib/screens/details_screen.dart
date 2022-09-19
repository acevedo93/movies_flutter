import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO change for Movie instance
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';
    return Scaffold(
        body: CustomScrollView(slivers: [
      _CustomAppBar(),
      SliverList(
        delegate: SliverChildListDelegate([_PosterAndTitle()]),
      )
    ]));
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          color: Colors.black12,
          alignment: Alignment.bottomCenter,
          child: const Text('Movie title', style: TextStyle(fontSize: 16)),
        ),
        background: const FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage('https://via.placeholder.com/500x300'),
            fit: BoxFit.cover),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                  placeholder: AssetImage('assets/no-image.jpg'),
                  image: NetworkImage('https://via.placeholder.com/300x400'),
                  height: 150)),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Movie title',
                style: textTheme.headline5,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'Movie Original title',
                style: textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Row(
                children: [
                  Icon(Icons.star, size: 20, color: Colors.grey),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Movie average',
                      style: textTheme.caption)
                ],
              )
            ],
          )
        ]));
  }
}
