// ignore_for_file: unnecessary_this, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:movieapp/Constants.dart';
import 'package:transparent_image/transparent_image.dart';

class Detail extends StatelessWidget {
  final Map movieData;
  Detail(this.movieData);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final String _titlePath = this.movieData['backdrop_path'];
    final String movieName = this.movieData['title'];
    final String movieOverview = this.movieData['overview'];
    final int movieId = this.movieData['id'];

    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(
          child: AppBar(
            flexibleSpace: FractionallySizedBox(
              alignment: Alignment.topCenter,
              widthFactor: 1,
              child: Container(
                height: 430,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "http://image.tmdb.org/t/p/w780/$_titlePath"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(size.height / 2),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'Genres',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Constants.colorLikeBlack),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Text(
                    'OverView',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Constants.colorLikeBlack),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Text(
                movieOverview,
                style: TextStyle(fontSize: 14.0, color: Constants.colorGray),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
