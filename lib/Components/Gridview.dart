// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:movieapp/Constants.dart';

class Grid_View extends StatelessWidget {
  List? movieData;
  Grid_View(this.movieData);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisExtent: 110,
              mainAxisSpacing: 5.0,
            ),
            itemCount: 10,
            itemBuilder: (BuildContext ctx, index) {
              final String name = movieData![index].name;
              if (name == 'Action') {
                return Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/action.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  )),
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
                ]);
              }
              if (name == 'Adventure') {
                return Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/adventure.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  )),
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
                ]);
              }
              if (name == 'Animation') {
                return Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/animated1.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  )),
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
                ]);
              }
              if (name == 'Comedy') {
                return Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/comedy.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  )),
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
                ]);
              }
              if (name == 'Crime') {
                return Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/crime.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  )),
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
                ]);
              }
              if (name == 'Documentary') {
                return Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/documentry.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  )),
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
                ]);
              }
              if (name == 'Family') {
                return Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/family.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  )),
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
                ]);
              }
              if (name == 'Fantasy') {
                return Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/fantasy.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  )),
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
                ]);
              }
              if (name == 'Horror') {
                return Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/horror.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  )),
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
                ]);
              }
              if (name == 'Thriller') {
                return Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/thriller.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  )),
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
                ]);
              } else {
                return Stack(alignment: Alignment.bottomLeft, children: [
                  Container(
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://media.istockphoto.com/photos/popcorn-and-clapperboard-picture-id1191001701?k=20&m=1191001701&s=612x612&w=0&h=uDszifNzvgeY5QrPwWvocFOUCw8ugViuw-U8LCJ1wu8='),
                      fit: BoxFit.fill,
                    ),
                  )),
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
                ]);
              }
            }),
      ),
    );
  }
}
