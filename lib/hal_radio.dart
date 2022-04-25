import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  const Radio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(40.0)),
            Text(
              "RADIO",
              style: TextStyle(fontFamily: "Serif", fontSize: 20.0),
            ),
            Padding(padding: EdgeInsets.all(40.0)),
            Icon(
              Icons.radio,
              size: 50.0,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}