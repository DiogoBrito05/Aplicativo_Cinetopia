import 'package:cinetopia/app/models/movie.dart';
import 'package:cinetopia/styles/colors_app.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 90,
          height: 120,
          decoration: BoxDecoration(
            color: AppColor.second,
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(movie.getPosterImage()),
              fit: BoxFit.cover,
            ),
          ),
          margin: const EdgeInsets.only(right: 16),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(
                movie.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              "Lançamento: ${movie.releaseDate}",
              style: TextStyle(
                color: AppColor.fourth,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
