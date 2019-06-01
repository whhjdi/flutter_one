import 'package:flutter/material.dart';
import './detail_page.dart';

var greenColor = Color(0xff48AF63);
var darkGreenColor = Color(0xff279152);
var img = 'http://ww2.sinaimg.cn/large/006tNc79ly1g3kn7m5euzj30ge0qe16m.jpg';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80.0),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 8.0),
                    Container(
                      width: 300.0,
                      child: Text(
                        'Fiddle Leaf Fig Topiary',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      '10" Nursery Pot',
                      style: TextStyle(color: Colors.black45),
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      children: <Widget>[
                        Text(
                          '\$',
                          style: TextStyle(
                            color: greenColor,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          '85',
                          style: TextStyle(
                            color: greenColor,
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(),
                              ),
                            );
                          },
                          backgroundColor: greenColor,
                          child: Icon(Icons.shopping_cart),
                        ),
                        Spacer(),
                        Container(
                          width: 150.0,
                          child: Image.network(
                            img,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Planting',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 100.0,
                          width: MediaQuery.of(context).size.width / 2 - 50,
                          decoration: BoxDecoration(
                              color: darkGreenColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32.0),
                                topRight: Radius.circular(32.0),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '250',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 34.0),
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    'ml',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Text(
                                'water',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100.0,
                          width: MediaQuery.of(context).size.width / 2 - 50,
                          decoration: BoxDecoration(
                              color: darkGreenColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32.0),
                                topRight: Radius.circular(32.0),
                              )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '18',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 34.0),
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    '℃',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Text(
                                'sunshine',
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
            ),
          ),
        ],
      ),
    );
  }
}
