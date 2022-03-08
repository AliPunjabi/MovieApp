// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class VerticalList extends StatelessWidget {
  List? movieData;
  VerticalList(this.movieData);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: movieData!.length,
        itemBuilder: (context, index) {
          final String posterPath = movieData![index]['backdrop_path'];
          return Container(
              // width: MediaQuery.of(context).size.width * 0.6,
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: SizedBox(
                  width: 300,
                  height: 180,
                  child: GestureDetector(
                    onTap: () {
                      /*Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return Detail(movieData![index]);
                        },
                      ),
                    );*/
                    },
                    child: Container(
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      image: DecorationImage(
                        image: NetworkImage(
                            'http://image.tmdb.org/t/p/w780/$posterPath'),
                        fit: BoxFit.fill,
                      ),
                    )),
                  )),
            ),
          ));
        },
      ),
    );
  }
}
