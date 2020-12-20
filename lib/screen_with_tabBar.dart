import 'package:flutter/material.dart';

import 'main.dart';

class ScreenWithTabBat extends StatefulWidget {
  @override
  _ScreenWithTabBatState createState() => _ScreenWithTabBatState();
}

class _ScreenWithTabBatState extends State<ScreenWithTabBat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen with TabBar"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Screen with TabBar"),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text("Go Home Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
