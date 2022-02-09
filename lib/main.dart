import 'package:flutter/material.dart';
import 'package:youtube/pages/Splash.dart';

import 'pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Splash(),
    );
  }
}
