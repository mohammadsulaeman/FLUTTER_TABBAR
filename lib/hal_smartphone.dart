import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  const Smartphone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(40.0)),
            Text(
              "SMARTPHONE",
              style: TextStyle(fontFamily: "Serif", fontSize: 20.0),
            ),
            Padding(padding: EdgeInsets.all(40.0)),
            Icon(
              Icons.smartphone,
              size: 50.0,
              color: Colors.brown,
            )
          ],
        ),
      ),
    );
  }
}
