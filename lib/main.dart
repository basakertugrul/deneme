import 'dart:math';

import 'package:flutter/material.dart';
import 'package:spinner/spinner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static const names = <String>[
    "Başak Ertuğrul",
    "Kıvanç Uzer",
    "Ömer Can Sucu",
    "Nasira Cansev",
    "Ege Tel",
    "Ata Tel",
    "Banu Karadaş",
    "Hidayet Sucu",
    "Süleyman Sucu",
    "Cemil Sucu",
    "Başak Ertuğrul",
    "Kıvanç Uzer",
    "Ömer Can Sucu",
    "Nasira Cansev",
    "Ege Tel",
    "Ata Tel",
    "Banu Karadaş",
    "Hidayet Sucu",
    "Süleyman Sucu",
    "Cemil Sucu",
    "Başak Ertuğrul",
    "Kıvanç Uzer",
    "Ömer Can Sucu",
    "Nasira Cansev",
    "Ege Tel",
    "Ata Tel",
    "Banu Karadaş",
    "Hidayet Sucu",
    "Süleyman Sucu",
    "Cemil Sucu",
    "Başak Ertuğrul",
    "Kıvanç Uzer",
    "Ömer Can Sucu",
    "Nasira Cansev",
    "Ege Tel",
    "Ata Tel",
    "Banu Karadaş",
    "Hidayet Sucu",
    "Süleyman Sucu",
    "Cemil Sucu"
  ];

  static const int NUM_ELEMENTS = 40;
  static const int ON_SCREEN = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Spinner Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(body: Builder(builder: (ctx) {
          var height = MediaQuery.of(ctx).size.height;
          var width = MediaQuery.of(ctx).size.width;
          return Spinner(
              containerCount: ON_SCREEN,
              containerSize: height / ON_SCREEN,
              animationSpeed: 100,
              zoomFactor: 1.5,
              builder: (index) {
                var color =
                    (cos((2 * pi) * index / NUM_ELEMENTS) + 1) / 2 * 255;

                return Container(
                  height: height / ON_SCREEN,
                  color: Color.fromARGB(255, 0, 0, color.floor()),
                  child: Center(
                      child: Text(
                    names[index % NUM_ELEMENTS],
                    style: TextStyle(
                        fontSize: height / ON_SCREEN * 0.1,
                        color: Colors.white),
                  )),
                );
              },
              spinDirection: SpinnerDirection.down,
              duration: Duration(seconds: 5));
        })));
  }
}
