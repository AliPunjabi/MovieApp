// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:movieapp/Components/vertical_cards.dart';
import 'package:movieapp/Constants.dart';
import 'package:movieapp/screens/MovieSearchScreen.dart';
import 'package:movieapp/services/UpcomingMoviesAPICall.dart';
import 'package:movieapp/services/UpcomingMoviesModelAPICall2.dart';

class NestedScreenRoutes {
  static const String root = '/';
  // static const String detail1 = '/detail1';
  // static const String detail2 = '/detail2';
}

class MovieListScreen extends StatelessWidget {
  MovieListScreen({required this.navigatorKey, Key? key}) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;

  void _push(BuildContext context, String name) {
    // Navigator.of(navigatorKey.currentContext).push(
    //
    BuildContext _desiredContext;

    if (name == 'Page 1') {
      _desiredContext = navigatorKey.currentContext!;
    } else {
      _desiredContext = navigatorKey.currentContext!;
    }
    Navigator.of(_desiredContext).push(
      MaterialPageRoute(builder: (context) => MovieSearchScreen()),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(
    BuildContext context,
  ) {
    return {
      '/': (context) => _home(context),
    };
  }

  @override
  Widget build(BuildContext context) {
    var routeBuilders = _routeBuilders(context);

    return Scaffold(
      // body: _home(context)
      ///
      body: Navigator(
        key: navigatorKey,
        initialRoute: NestedScreenRoutes.root,

        /// Starting route from the onGenerateRoute map

        onGenerateRoute: (routeSettings) {
          /// Generate the route we want
          return MaterialPageRoute(
              builder: (context) =>
                  routeBuilders[routeSettings.name]!(context));
        },
      ),
    );
  }

  Widget _home(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 75,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              'Watch',
              style: TextStyle(
                  color: Constants.colorfont,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search_outlined, color: Colors.black),
              tooltip: 'Go to the search screen',
              onPressed: () {
                _push(context, 'Page 1');
              },
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: FutureBuilder(
          future: fetchMovies2(),
          builder: (context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else {
              return vertical_cards(snapshot.data.movies);
            }
          },
        ),
      )
    ]));
  }
}
