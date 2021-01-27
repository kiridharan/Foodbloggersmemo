import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:food_blogger_memo/Screens/shop_details.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int dropdownValue = 0;
  bool value = false;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          "Food memo",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              letterSpacing: 5,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.search_outlined),
            onPressed: () {},
            tooltip: 'search',
          ),
        ],
      ),
      body: DeatailsShop(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          newMethod(context);
        },
        child: Icon(
          Icons.add,
          size: 45,
        ),
        backgroundColor: Colors.red,
      ),
    );
  }

  void newMethod(BuildContext context) {
    showDialog(
        // barrierColor: Colors.blue,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.orange,
            scrollable: true,
            title: Text(
              'Shot Details',
              style: TextStyle(color: Colors.white, letterSpacing: 4),
            ),
            content: Padding(
              padding: EdgeInsets.all(10.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 3,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          labelText: "shop name",
                          focusColor: Colors.white,
                          icon: Icon(
                            Icons.location_city,
                            color: Colors.white,
                          )),
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 3,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          labelText: "city name",
                          focusColor: Colors.white,
                          icon: Icon(
                            Icons.location_city,
                            color: Colors.white,
                          )),
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 3,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          labelText: "address",
                          focusColor: Colors.white,
                          icon: Icon(
                            Icons.location_city,
                            color: Colors.white,
                          )),
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 3,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          labelText: "dishes",
                          focusColor: Colors.white,
                          icon: Icon(
                            Icons.location_city,
                            color: Colors.white,
                          )),
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 3,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white,
                          labelText: "fav dishes",
                          focusColor: Colors.white,
                          icon: Icon(
                            Icons.location_city,
                            color: Colors.white,
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Visted'),
                            Checkbox(
                              value: this.value,
                              onChanged: (bool value) {
                                setState(() {
                                  this.value = value;
                                });
                              },
                            ),
                          ],
                        ),
                        DropdownButton<int>(
                          value: dropdownValue,
                          icon: Icon(Icons.arrow_downward),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(color: Colors.deepPurple),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (int newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <int>[0, 1, 2, 3, 4]
                              .map<DropdownMenuItem<int>>((int value) {
                            return DropdownMenuItem<int>(
                              value: value,
                              child: Text('rating:$value'),
                            );
                          }).toList(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
