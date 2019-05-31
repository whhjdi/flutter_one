import 'package:flutter/material.dart';

var greenColor = Color(0xff48AF63);
var darkGreenColor = Color(0xff279152);

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Hello Muxue!',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 200.0,
                  child: Text(
                    'Product Overview',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      rowItem(Icons.access_alarms, 'Water', 'every 7 days'),
                      SizedBox(height: 10.0),
                      rowItem(Icons.adb, 'Humidity', 'up to 82%'),
                      SizedBox(height: 10.0),
                      rowItem(Icons.widgets, 'Size', '38" -48" tdll'),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 48.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: darkGreenColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                      )),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Delivery Information',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 32.0),
                Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                      color: darkGreenColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                      )),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'Return Policy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 80.0,
            child: Row(
              children: <Widget>[
                Container(
                  height: 80.0,
                  width: MediaQuery.of(context).size.width / 2,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                      Text(
                        'add to cart',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget rowItem(icon, name, title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      Text(
        title,
        style: TextStyle(color: Colors.white54),
      )
    ],
  );
}
