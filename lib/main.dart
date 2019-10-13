import 'package:flutter/material.dart';

import 'screens/carousel_screen.dart';
import 'screens/form_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              minWidth: 200,
              height: 50,
              elevation: 9,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return CarouselScreen();
                  }),
                );
              },
              child: Text(
                'Carousel PageView',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              color: Colors.deepPurpleAccent,
              minWidth: 200,
              height: 50,
              elevation: 9,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FormScreen();
                  }),
                );
              },
              child: Text(
                'Form PageView',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
