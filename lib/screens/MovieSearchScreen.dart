// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:movieapp/Components/Gridview.dart';
import 'package:movieapp/Constants.dart';
import 'package:movieapp/services/MoviesGenreAPICall.dart';
import 'package:movieapp/services/SearchMoviesAPICall.dart';
import 'package:movieapp/Components/VerticalList.dart';

class MovieSearchScreen extends StatefulWidget {
  @override
  _SearchMoviesState createState() => _SearchMoviesState();
}

class _SearchMoviesState extends State<MovieSearchScreen> {
  final searchController = TextEditingController();
  String movieName = '';

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    fetchMoviesGenre();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Constants.colorWhite,
          automaticallyImplyLeading: false,
          // The search area here
          title: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Constants.colorBackground,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                    prefixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Constants.colorGray,
                      ),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (searchController.text != '') {
                          setState(() {
                            movieName = searchController.text;
                            fetchMovies(movieName);
                          });
                        } else {
                          setState(() {
                            movieName = '';
                          });
                        }
                      },
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.clear,
                        color: Constants.colorGray,
                      ),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'TV shows, movies and more',
                    border: InputBorder.none),
              ),
            ),
          )),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          movieName == ''
              ? Expanded(
                  child: FutureBuilder(
                    future: fetchMoviesGenre(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: SingleChildScrollView(),
                        );
                      } else {
                        final List movieData = snapshot.data.genres;

                        if (movieData == []) {
                          return SnackBar(
                              content: Text('No data appear with your search'));
                        } else {
                          return Grid_View(movieData);
                        }
                      }
                    },
                  ),
                )
              : Expanded(
                  child: FutureBuilder(
                    future: fetchMovies(movieName),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: SingleChildScrollView(),
                        );
                      } else {
                        final List movieData = snapshot.data.movies;
                        movieData.removeWhere(
                            (item) => item['backdrop_path'] == null);
                        if (movieData == []) {
                          return SnackBar(
                              content: Text('No data appear with your search'));
                        } else {
                          return VerticalList(movieData);
                        }
                      }
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
