import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Color(0xffff0000),
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.h_mobiledata, color: Colors.white),
                  onPressed: () {},
                  iconSize: 30,
                ),
                IconButton(
                  icon: Icon(Icons.playlist_add, color: Colors.white),
                  onPressed: () {},
                  iconSize: 30,
                ),
                SizedBox(width: 20), // The dummy child
                IconButton(
                  icon: Icon(Icons.precision_manufacturing_sharp,
                      color: Colors.white),
                  onPressed: () {},
                  iconSize: 30,
                ),
                IconButton(
                  icon: Icon(Icons.person, color: Colors.white),
                  onPressed: () {},
                  iconSize: 30,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.white,
                child: Icon(Icons.home, color: Colors.red, size: 38),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
