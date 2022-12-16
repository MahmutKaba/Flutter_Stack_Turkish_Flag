import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: TurkBayrak(g: 250));
  }
}

/*class TurkBayragi extends StatelessWidget {
  double g = 200;
  @override
  Widget build(BuildContext context) {
    return TurkBayrak(g: 100);
  }
}*/

class TurkBayrak extends StatelessWidget {
  const TurkBayrak({
    Key? key,
    required this.g,
  }) : super(key: key);

  final double g;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Turkish Flag'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: g * 1.5,
              height: g,
              color: Colors.red,
            ),
            Positioned(
              left: g * 0.25,
              top: 0.25 * g,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                width: 0.5 * g,
                height: 0.5 * g,
              ),
            ),
            Positioned(
              left: g * 0.3625,
              top: 0.3 * g,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                width: 0.4 * g,
                height: 0.4 * g,
              ),
            ),
            Positioned(
              left: 0.7 * g,
              top: 0.375 * g,
              child: Transform(
                transform: Matrix4.rotationZ(-0.3),
                alignment: FractionalOffset.center,
                child: Icon(
                  Icons.star,
                  color: Colors.white,
                  size: g * 0.25,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
