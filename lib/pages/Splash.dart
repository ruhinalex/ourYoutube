import 'package:flutter/material.dart';
import 'package:youtube/pages/home.dart';

class Splash extends StatelessWidget {
  const Splash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 360,
            ),
            Image.asset(
              "../../assets/logo/logo.png",
              width: 112,
              height: 112,
            ),
            SizedBox(
              height: 200,
            ),
            Container(
                width: 400,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xFFff0000),
                    borderRadius: BorderRadius.circular(10)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              height: 60,
              decoration: BoxDecoration(
                  color: Color(0xFFff0000),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child:
                      Text("Sign up", style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}
