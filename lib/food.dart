import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fuck.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 60, 30, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/arrow.png"),
                    Image.asset("assets/DOT.png")
                  ],
                ),
              ),
              Image.asset("assets/pic.png"),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Garlic Rib",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          fontFamily: 'one'),
                    ),
                    Icon(Icons.access_alarms_rounded)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 50, 0),
                child: Text(
                  "This is made by speacial meat and the chef himself from England. This Dish has been Favorite to many of our Customers",
                  style: TextStyle(fontSize: 12, fontFamily: 'two'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Price", style: TextStyle(fontSize: 10)),
                        Text(
                          "₹ 1,265",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'one'),
                        ),
                      ],
                    ),
                    Container(
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(7)),
                      child: Center(
                          child: Text(
                        "Add",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'two'),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
