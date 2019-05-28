import 'package:flutter/material.dart';
import 'details_page.dart';

main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int index = 1;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Ahmed Salah',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold)),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/pic.png'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                Text(
                  'Discover',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Suitable Home',
                  style: TextStyle(fontSize: 30.0, color: Colors.black),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(44, 46, 87, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0))),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Find a good home',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(44, 46, 87, 1)),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0),
                                    bottomLeft: Radius.circular(30.0)),
                            ),

                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Stack(children: [
                      Icon(Icons.notifications_none),
                      Positioned(
                        right: 1,
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                              color: Colors.orange, shape: BoxShape.circle),
                          child: Text(
                            '2',
                            style:
                                TextStyle(fontSize: 10.0, color: Colors.white),
                          ),
                        ),
                      )
                    ])
                  ],
                ),
                SizedBox(
                  height: 16.0,
                ),
                Container(
                  height: 400.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      buildHouse(),
                      buildHouse(),
                      buildHouse(),
                      buildHouse(),
                      buildHouse(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 15.0 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            index == 1
                ? _selectdWidget(Icon(Icons.home, color: Colors.white), 'Home')
                : IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                    },
                  ),
            index == 2
                ? _selectdWidget(Icon(Icons.bookmark_border, color: Colors.white), 'Bookmarkes')
                : IconButton(
                    icon: Icon(Icons.bookmark_border),
                    onPressed: () {
                      print('book');
                      setState(() {
                        index = 2;
                      });
                    },
                  ),
            index == 3
                ? _selectdWidget(Icon(Icons.message, color: Colors.white), 'Message')
                : IconButton(
                    icon: Icon(Icons.message),
                    onPressed: () {
                      setState(() {
                        index = 3;
                        print('set');
                        print(index);
                      });
                    },
                  ),
            index == 4
                ? _selectdWidget(Icon(Icons.perm_identity , color: Colors.white,), 'Profile')
                : IconButton(
                    icon: Icon(Icons.perm_identity),
                    onPressed: () {
                      setState(() {
                        index = 4;
                      });
                    })
          ],
        ),
      ),
    );
  }

  Widget _selectdWidget(Icon icon, String title) {
    return Container(

      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(44, 46, 87, 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[icon , Text(title , style: TextStyle(color: Colors.white),)],
      ),
    );
  }

  Widget buildHouse() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailsPage()));
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        height: 390.0,
        width: 250.0,
        child: Stack(
          children: <Widget>[
            Container(
              width: 250.0,
              height: 360.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/house.jpg'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 1,
              right: 5,
              child: FloatingActionButton(
                heroTag: null,
                backgroundColor: Colors.orange,
                child: Icon(Icons.chevron_right),
                mini: true,
              ),
            ),
            Positioned(
              left: 20.0,
              bottom: 40.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Family House',
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Text(
                      'Yangon,Shwe Taung Kyar',
                      style: TextStyle(color: Colors.white),
                    )
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
