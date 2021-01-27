import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_blogger_memo/Models/api.dart';
import 'package:provider/provider.dart';

class DeatailsShop extends StatefulWidget {
  @override
  _DeatailsShopState createState() => _DeatailsShopState();
}

class _DeatailsShopState extends State<DeatailsShop> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    final shopP = Provider.of<ShopProvider>(context);
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.red,
            width: 30,
            height: 200,
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.red, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              borderOnForeground: true,
              elevation: 2,
              color: Colors.orange,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' Cityname',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          letterSpacing: 3
                        ),
                      ),
                      RaisedButton(
                        textTheme: null,
                        color: Colors.red,
                        child: Row(
                          children: [
                            Icon(Icons.star_outline),
                            Text('RATING:1/5')
                          ],
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_activity,
                        color: Colors.white,
                      ),
                      Text(
                        'ShopeName',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 2,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '   address',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Text('visited:'),
                          Checkbox(
                            value: this.value,
                            onChanged: (bool value) {
                              setState(() {
                                this.value = value;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text('dishes'),
                      Text('fav dishes'),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
