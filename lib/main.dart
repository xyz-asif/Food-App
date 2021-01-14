import 'dart:ui';
import 'package:awesome/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.black));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

Widget asif(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        color: Colors.white.withOpacity(0.3),
        width: 37,
        height: 38,
        child: child,
      ),
    ),
  );
}

Widget xyz(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        color: Colors.white.withOpacity(0.3),
        width: 150,
        height: 180,
        child: child,
      ),
    ),
  );
}

Widget bro(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        color: Colors.white.withOpacity(0.3),
        width: 330,
        height: 100,
        child: child,
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/i.jpg"), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/menu.png"),
                      Image.asset("assets/cart.png")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 10, 30, 10),
                  child: ListTile(
                    title: Text(
                      "Delicious Food",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'one'),
                    ),
                    subtitle: Text("we made fresh and Healthy food",
                        style: TextStyle(
                          fontSize: 12.0,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      asif(Image.asset("assets/burger.png")),
                      asif(Image.asset("assets/ice.png")),
                      asif(Image.asset("assets/beer.png")),
                      asif(Image.asset("assets/food.png"))
                    ],
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          xyz(
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Crab Remen",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        fontFamily: 'two'),
                                  ),
                                  Text(
                                    "with spicy garlic",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: const Color(0xff999999)),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("₹ 658.99",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'one')),
                                      Icon(Icons.add_alarm_rounded),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ), //xyz
                          Positioned(
                            top: -50,
                            left: 10,
                            child: Container(
                              child: Image.asset(
                                "assets/one.png",
                                width: 140,
                                height: 135.75,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Container(
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          xyz(
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Strognoff",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        fontFamily: 'one'),
                                  ),
                                  Text(
                                    "mushrooms & chillies",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: const Color(0xff999999)),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("₹ 956.2",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'one')),
                                      Icon(Icons.add_alarm_rounded),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ), //xyz
                          Positioned(
                            top: -50,
                            left: 10,
                            child: Container(
                              child: Image.asset(
                                "assets/two.png",
                                width: 140,
                                height: 145.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      bro(
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Lasanga - 1",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    fontFamily: 'one'),
                              ),
                              Text(
                                "Garnished with mint Leaves",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: const Color(0xff999999)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text("₹ 756.2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'one')),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: -15,
                          right: -30,
                          child: Image.asset(
                            "assets/three.png",
                            width: 180,
                            height: 154.94,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 55),
                  child: Container(
                    width: 330,
                    height: 48,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 20.0,
                            offset: Offset(
                              15.0, // Move to right 10  horizontally
                              15.0, // Move to bottom 10 Vertically
                            ), // soften the shadow
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                            minWidth: 20,
                            height: 20,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Screen()));
                            },
                            child: Image.asset("assets/a.png")),
                        FlatButton(
                            minWidth: 20,
                            height: 20,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Screen()));
                            },
                            child: Image.asset("assets/w.png")),
                        FlatButton(
                            minWidth: 20,
                            height: 20,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Screen()));
                            },
                            child: Image.asset("assets/c.png")),
                        FlatButton(
                            minWidth: 20,
                            height: 20,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Screen()));
                            },
                            child: Image.asset("assets/s.png")),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
