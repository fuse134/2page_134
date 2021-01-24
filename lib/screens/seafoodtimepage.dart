import 'package:flutter/material.dart';
import 'package:navigatin2page/screens/login_page.dart';

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  String _menu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'SEAFOODTIME',
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Container(
              width: 385,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.account_circle),
                  RaisedButton(
                    textColor: Colors.red,
                    color: Colors.white,
                    child: Text('Logout'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => loginpage(),
                          ));
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      _menu = value;
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Title(
                color: Colors.white,
                child: Text("MENU", style: TextStyle(fontSize: 35))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'img/01.png',
                      height: 132,
                      width: 176,
                    ),
                    Image.asset(
                      'img/02.png',
                      height: 132,
                      width: 176,
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'img/03.png',
                      height: 132,
                      width: 176,
                    ),
                    Image.asset(
                      'img/04.png',
                      height: 132,
                      width: 176,
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'img/05.png',
                      height: 132,
                      width: 176,
                    ),
                    Image.asset(
                      'img/06.png',
                      height: 132,
                      width: 176,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
