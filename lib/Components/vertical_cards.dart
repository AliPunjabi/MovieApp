// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:movieapp/Constants.dart';
import 'package:movieapp/screens/Detail.dart';
import 'package:movieapp/services/UpcomingMoviesAPICall.dart';
import 'package:movieapp/services/UpcomingMoviesModelAPICall2.dart';

class vertical_cards extends StatelessWidget {
  List? movieData;
  vertical_cards(this.movieData);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Constants.colorBackground),
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: movieData!.length,
        itemBuilder: (context, index) {
          final String backdropPath = movieData![index]['backdrop_path'];
          final String name = movieData![index]['original_title'];

          return Container(
              // width: MediaQuery.of(context).size.width * 0.6,
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: SizedBox(
                  width: 300,
                  height: 180,
                  child: GestureDetector(
                    onTap: () {
                      fetchMovies2();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return Detail(movieData![index]);
                          },
                        ),
                      );
                    },
                    child: Stack(alignment: Alignment.bottomLeft, children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          image: DecorationImage(
                            image: NetworkImage(
                                'http://image.tmdb.org/t/p/w780/$backdropPath'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 0, 16),
                        child: Text(
                          '$name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Constants.colorWhite),
                        ),
                      )
                    ]),
                  )),
            ),
          ));
        },
      ),
    );
  }
}
