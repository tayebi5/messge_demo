import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myrp(),
  ));
}

class myrp extends StatefulWidget {
  const myrp({Key? key}) : super(key: key);

  @override
  _myrpState createState() => _myrpState();
}

class _myrpState extends State<myrp> {
  TextEditingController _searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Chat'),
        leading: Container(
          padding: EdgeInsets.only(left: 16, top: 3, bottom: 3),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('images/img.jpg'),
          ),
        ),
        actions: <Widget>[
          CircleAvatar(
            backgroundColor: Color.fromARGB(51, 51, 51, 1),
            child: IconButton(
              icon: Icon(
                Icons.photo,
                size: 22,
                color: Color.fromRGBO(195, 195, 195, 1),
              ),
              onPressed: () {},
            ),
          ),
          CircleAvatar(
            backgroundColor: Color.fromARGB(51, 51, 51, 1),
            child: IconButton(
              icon: Icon(
                Icons.edit,
                size: 22,
                color: Color.fromRGBO(195, 195, 195, 1),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              padding: EdgeInsets.only(left: 16, top: 4, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                color: Color.fromRGBO(51, 51, 51, 1),
              ),
              child: TextField(
                controller: _searchController,
                cursorColor: Color(0xFF000000),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.search,
                    color: Color.fromRGBO(159, 159, 159, 1),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(159, 159, 159, 1),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 90,
            margin: EdgeInsets.only(top: 8, left: 16, bottom: 8),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: 80,
                  margin: EdgeInsets.only(right: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            padding: EdgeInsets.all((index % 2 == 1) ? 2 : 0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              color: Color.fromRGBO(51, 51, 51, 1),
                              border: (index % 2 == 0)
                                  ? Border.all(width: 0)
                                  : Border.all(
                                      color: Color.fromARGB(0, 132, 255, 1),
                                      width: 3,
                                    ),
                            ),
                            child: ClipOval(
                              child: (index == 0)
                                  ? IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        size: 30,
                                        color: Color.fromARGB(195, 195, 195, 1),
                                      ),
                                      onPressed: () {},
                                    )
                                  : Image.asset(
                                      'images/img4.jpg',
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                          Positioned(
                            child: Container(
                              height: (index != 0) ? 18 : 0,
                              width: 18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                color: Colors.green,
                                border:
                                    Border.all(color: Colors.black, width: 3),
                              ),
                            ),
                            bottom: 0,
                            right: 0,
                          ),
                        ],
                      ),
                      Text(
                        "Your Story",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: (index % 2 == 1)
                              ? Colors.white
                              : Color.fromRGBO(123, 123, 123, 1),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: 12,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 8),
            height: 470,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.only(left: 16, right: 16, top: 8),
                  leading: Stack(
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Color.fromRGBO(51, 51, 51, 2),
                        ),
                        child: ClipOval(
                          child: Image.asset('images/img5.jpg'),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          height: (index % 2 == 0) ? 18 : 0,
                          width: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(11),
                            ),
                            color: Colors.green,
                            border: Border.all(color: Colors.black, width: 3),
                          ),
                        ),
                        bottom: 0,
                        right: 0,
                      ),
                    ],
                  ),
                  title: Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: Text(
                      'tayeb ih',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    'This is message of tayeb ih',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(123, 123, 123, 1),
                    ),
                  ),
                  trailing: Icon(
                    Icons.check_circle,
                    size: 20,
                    color: (index % 2 == 0)
                        ? Color.fromRGBO(101, 107, 115, 1)
                        : Colors.transparent,
                  ),
                );
              },
              itemCount: 10,
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.black,
        padding: EdgeInsets.only(left: 80, right: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/mmessage.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 21,
                    width: 21,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.5),
                      ),
                      color: Colors.amberAccent,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  top: 2,
                  right: 0,
                ),
              ],
            ),
            Container(
              height: 40,
              width: 40,
              child: IconButton(
                icon: Image.asset(
                  'images/people.png',
                  fit: BoxFit.cover,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              height: 40,
              width: 40,
              child: IconButton(
                icon: Image.asset(
                  'images/navigation.png',
                  fit: BoxFit.cover,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
