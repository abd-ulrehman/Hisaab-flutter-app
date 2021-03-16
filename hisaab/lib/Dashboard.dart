import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  static String usename = "Abdul Rehman";
  static DateTime now = new DateTime.now();
  int _currentIndex = 0;
  final tabs = [
    _dashboardTab(),
    Center(child: Text("Profile")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: tabs[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addItem(context);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        opacity: .2,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        elevation: 8,
        fabLocation: BubbleBottomBarFabLocation.end, //new
        hasNotch: true, //new
        hasInk: true, //new, gives a cute ink effect
        inkColor: Colors.black12, //optional, uses theme color if not specified
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.dashboard,
                color: Colors.red,
              ),
              title: Text("Dashboard")),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.person,
                color: Colors.deepPurple,
              ),
              title: Text("Profile")),
        ],
      ),
    );
  }

  static Container _dashboardTab() {
    return (Container(
      color: Colors.white,
      child: Column(
        children: [
          _userDetails(),
          _expenceContainers(),
          Container(
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(
                      0.5,
                    ),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Expence",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 400,
                    margin: EdgeInsets.only(bottom: 20),
                    child: ListView(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, top: 30, bottom: 5),
                      children: [
                        Card(
                          child: ListTile(
                            onTap: () {
                              // _showExpenceDetails();
                            },
                            title: Text("Grocery Items"),
                            subtitle: Text("Household"),
                            trailing: Wrap(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "200",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '${now.day}' +
                                          '/${now.month}' +
                                          '/${now.year}',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            dense: true,
                          ),
                        ),
                        Card(
                          child: ListTile(
                            onTap: () {
                              print("Item Tapped");
                            },
                            title: Text("Grocery Items"),
                            subtitle: Text("Household"),
                            trailing: Wrap(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "200",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '${now.day}' +
                                          '/${now.month}' +
                                          '/${now.year}',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            dense: true,
                          ),
                        ),
                        Card(
                          child: ListTile(
                            onTap: () {
                              print("Item Tapped");
                            },
                            title: Text("Grocery Items"),
                            subtitle: Text("Household"),
                            trailing: Wrap(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "200",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '${now.day}' +
                                          '/${now.month}' +
                                          '/${now.year}',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            dense: true,
                          ),
                        ),
                        Card(
                          child: ListTile(
                            onTap: () {
                              print("Item Tapped");
                            },
                            title: Text("Grocery Items"),
                            subtitle: Text("Household"),
                            trailing: Wrap(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "200",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '${now.day}' +
                                          '/${now.month}' +
                                          '/${now.year}',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            dense: true,
                          ),
                        ),
                        Card(
                          child: ListTile(
                            onTap: () {
                              print("Item Tapped");
                            },
                            title: Text("Grocery Items"),
                            subtitle: Text("Household"),
                            trailing: Wrap(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "200",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '${now.day}' +
                                          '/${now.month}' +
                                          '/${now.year}',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            dense: true,
                          ),
                        ),
                        Card(
                          child: ListTile(
                            onTap: () {
                              print("Item Tapped");
                            },
                            title: Text("Grocery Items"),
                            subtitle: Text("Household"),
                            trailing: Wrap(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "200",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '${now.day}' +
                                          '/${now.month}' +
                                          '/${now.year}',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            dense: true,
                          ),
                        ),
                        Card(
                          child: ListTile(
                            onTap: () {
                              print("Item Tapped");
                            },
                            title: Text("Grocery Items"),
                            subtitle: Text("Household"),
                            trailing: Wrap(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "200",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      '${now.day}' +
                                          '/${now.month}' +
                                          '/${now.year}',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            dense: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    ));
  }

  static Container _userDetails() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(16, 30, 16, 0),
      height: 100,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Color.fromRGBO(47, 79, 79, 1),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(
              0.5,
            ),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(19),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    usename,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    '${now.day}' + '/${now.month}' + '/${now.year}',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Total Expence",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "20678 Pkr",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static _expenceContainers() {
    return (Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(119, 136, 153, 1),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(
                      0.5,
                    ),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ]),
            width: 100,
            padding: EdgeInsets.all(2),
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
              ),
              child: Column(
                children: [
                  Text(
                    "Today",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  Text(
                    "99 Pkr",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 128, 128, 1),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(
                      0.5,
                    ),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ]),
            width: 100,
            padding: EdgeInsets.all(1),
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
              ),
              child: Column(
                children: [
                  Text(
                    "7 Days",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  Text(
                    "1560 Pkr",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(128, 128, 0, 1),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(
                      0.5,
                    ),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ]),
            width: 100,
            padding: EdgeInsets.all(1),
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
              ),
              child: Column(
                children: [
                  Text(
                    "30 Days",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  Text(
                    "25467 Pkr",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  void _addItem(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.all(20),
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(
                      0.5,
                    ),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    child: Positioned(
                      right: 0.0,
                      top: -30.0,
                      child: InkResponse(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: CircleAvatar(
                          child: Icon(
                            Icons.close,
                            color: Colors.red,
                          ),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(12),
                    child: Text(
                      "Add Expence",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20, top: 8),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: 'Title',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.title,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20, top: 8),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: 'Category',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.category,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20, top: 8),
                          child: TextFormField(
                            keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              labelText: 'Date',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.date_range,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20, top: 8),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: 'Amount',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.monetization_on,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ButtonTheme(
                                minWidth: 120,
                                child: RaisedButton(
                                  textColor: Colors.white,
                                  color: Colors.grey,
                                  padding: EdgeInsets.only(top: 15, bottom: 15),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Cancel",
                                  ),
                                ),
                              ),
                              ButtonTheme(
                                minWidth: 120,
                                child: RaisedButton(
                                  textColor: Colors.white,
                                  color: Colors.green,
                                  padding: EdgeInsets.only(top: 15, bottom: 15),
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => Dashboard()),
                                    // );
                                  },
                                  child: Text(
                                    "Save",
                                  ),
                                ),
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
          );
        });
    // showModalBottomSheet(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return Container(

    //       );
    //     });
  }

  // static void _showExpenceDetails() {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return Container(
  //           child: new Wrap(
  //             children: <Widget>[
  //               new ListTile(
  //                   leading: new Icon(Icons.music_note),
  //                   title: new Text('Music'),
  //                   onTap: () => {}),
  //               new ListTile(
  //                 leading: new Icon(Icons.videocam),
  //                 title: new Text('Video'),
  //                 onTap: () => {},
  //               ),
  //             ],
  //           ),
  //         );
  //       });
  // }
}
