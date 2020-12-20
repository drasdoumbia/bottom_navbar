import 'package:financial_app/page1.dart';
import 'package:financial_app/page3.dart';
import 'package:financial_app/page4.dart';
import 'package:financial_app/page5.dart';
import 'package:flutter/material.dart';

import 'page2.dart';

void main() {
  runApp(FinantialApp());
}

class FinantialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Finantial App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItem = 0;

  var screensList = [Page1(), Page2(), Page3(), Page4(), Page5()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 0,
      ),
      body: screensList[_selectedItem],
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
/*  final List<Widget> screensList;*/

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
/*      @required this.screensList,*/
      @required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  int index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      padding: EdgeInsets.only(bottom: 5.0, top: 5.0),
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border(
          bottom: BorderSide(width: 4, color: Colors.green),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              widget.onChange(0);
              setState(() {
                _selectedIndex = 0;
                print(_selectedIndex);
              });
            },
            child: Container(
              decoration: (_selectedIndex == 0)
                  ? BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 4, color: Colors.green),
                      ),
                      gradient: LinearGradient(
                          colors: [
                            Colors.green.withOpacity(0.3),
                            Colors.green.withOpacity(0.015),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter))
                  : BoxDecoration(),
              child: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? Colors.black : Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onChange(1);
              setState(() {
                _selectedIndex = 1;
                print(_selectedIndex);
              });
            },
            child: Container(
              decoration: (_selectedIndex == 1)
                  ? BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 4, color: Colors.green),
                      ),
                      gradient: LinearGradient(
                          colors: [
                            Colors.green.withOpacity(0.3),
                            Colors.green.withOpacity(0.015),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter)
                      // color: index == _selectedItemIndex ? Colors.green : Colors.white,
                      )
                  : BoxDecoration(),
              child: Icon(
                Icons.card_giftcard,
                color: _selectedIndex == 1 ? Colors.black : Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onChange(2);
              setState(() {
                _selectedIndex = 2;
                print(_selectedIndex);
              });
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 10.0),
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.deepOrange,
              ),
              child: Icon(
                Icons.camera,
                color: Colors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onChange(3);
              setState(() {
                _selectedIndex = 3;
                print(_selectedIndex);
              });
            },
            child: Container(
              decoration: (_selectedIndex == 3)
                  ? BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 4, color: Colors.green),
                      ),
                      gradient: LinearGradient(
                          colors: [
                            Colors.green.withOpacity(0.3),
                            Colors.green.withOpacity(0.015),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter))
                  : BoxDecoration(),
              child: Icon(
                Icons.pie_chart,
                color: _selectedIndex == 3 ? Colors.black : Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.onChange(4);
              setState(() {
                _selectedIndex = 4;
                print(_selectedIndex);
              });
            },
            child: Container(
              decoration: (_selectedIndex == 4)
                  ? BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 4, color: Colors.green),
                      ),
                      gradient: LinearGradient(
                          colors: [
                            Colors.green.withOpacity(0.3),
                            Colors.green.withOpacity(0.015),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter))
                  : BoxDecoration(),
              child: Icon(
                Icons.person,
                color: _selectedIndex == 4 ? Colors.black : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
