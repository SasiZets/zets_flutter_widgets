
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class Load extends StatefulWidget {
  @override
  _LoadState createState() => _LoadState();
}

class _LoadState extends State<Load> {
  double c1 = 20.0, c2 = 20.1, c3 = 20.2;

  @override
  void initState() {
    super.initState();
    Timer.periodic(
        Duration(
          milliseconds: 1000,
        ), (context) {
      setState(() {
        // Create a random number generator.
        final random = Random();

        // Generate a random width and height.
        _width0 = random.nextInt(30).toDouble() + 10;
        _height0 = random.nextInt(30).toDouble() + 10;

        // Generate a random color.
        _color0 = Color.fromRGBO(
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
          1,
        );

        // Generate a random border radius.
        _borderRadius0 =
            BorderRadius.circular(random.nextInt(50).toDouble() + 10);
        // Generate a random width and height.
        _width1 = random.nextInt(30).toDouble() + 10;
        _height1 = random.nextInt(30).toDouble() + 10;

        // Generate a random color.
        _color1 = Color.fromRGBO(
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
          1,
        );

        // Generate a random border radius.
        _borderRadius1 = BorderRadius.circular(random.nextInt(50).toDouble() +
            10); // Generate a random width and height.
        _width2 = random.nextInt(30).toDouble() + 10;
        _height2 = random.nextInt(30).toDouble() + 10;

        // Generate a random color.
        _color2 = Color.fromRGBO(
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
          1,
        );

        // Generate a random border radius.
        _borderRadius2 =
            BorderRadius.circular(random.nextInt(50).toDouble() + 10);
      });
    });
  }

  double _width0 = 10;
  double _height0 = 10;
  Color _color0 = Colors.green;
  BorderRadiusGeometry _borderRadius0 = BorderRadius.circular(8);
  double _width1 = 10;
  double _height1 = 10;
  Color _color1 = Colors.green;
  BorderRadiusGeometry _borderRadius1 = BorderRadius.circular(8);
  double _width2 = 10;
  double _height2 = 10;
  Color _color2 = Colors.green;
  BorderRadiusGeometry _borderRadius2 = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              // Use the properties stored in the State class.
              width: _width0,
              height: _height0,
              decoration: BoxDecoration(
                color: _color0,
                borderRadius: _borderRadius0,
              ),
              // Define how long the animation should take.
              duration: const Duration(seconds: 1),
              // Provide an optional curve to make the animation feel smoother.
              curve: Curves.fastOutSlowIn,
            ),
            SizedBox(
              width: 10,
            ),
            AnimatedContainer(
              // Use the properties stored in the State class.
              width: _width1,
              height: _height1,
              decoration: BoxDecoration(
                color: _color1,
                borderRadius: _borderRadius1,
              ),
              // Define how long the animation should take.
              duration: const Duration(seconds: 1),
              // Provide an optional curve to make the animation feel smoother.
              curve: Curves.fastOutSlowIn,
            ),
            SizedBox(
              width: 10,
            ),
            AnimatedContainer(
              // Use the properties stored in the State class.
              width: _width2,
              height: _height2,
              decoration: BoxDecoration(
                color: _color2,
                borderRadius: _borderRadius2,
              ),
              // Define how long the animation should take.
              duration: const Duration(seconds: 1),
              // Provide an optional curve to make the animation feel smoother.
              curve: Curves.fastOutSlowIn,
            ),
          ],
        ),
      ),
    );
  }
}
