import 'package:flutter/material.dart';
import 'hal_smartphone.dart' as SmartPhone;
import 'hal_headset.dart' as Headset;
import 'hal_radio.dart' as Radio;

void main() {
  runApp(MaterialApp(
    title: "Tab Bar",
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController? controller;
  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Elektronik"),
        backgroundColor: Colors.red,
        bottom: TabBar(
          controller: controller,
          tabs: [
            Tab(
              icon: Icon(Icons.smartphone),
              text: "SMARTPHONE",
            ),
            Tab(
              icon: Icon(Icons.radio),
              text: "RADIO",
            ),
            Tab(
              icon: Icon(Icons.headset),
              text: "HEADSET",
            )
          ],
        ),
      ),
      body: new TabBarView(controller: controller, children: <Widget>[
        SmartPhone.Smartphone(),
        Radio.Radio(),
        Headset.Headset()
      ]),

      bottomNavigationBar: Material(
        color: Colors.amberAccent,
        child: TabBar(
          controller: controller,
          tabs: [
            Tab(
              icon: Icon(Icons.smartphone),
              text: "SMARTPHONE",
            ),
            Tab(
              icon: Icon(Icons.radio),
              text: "RADIO",
            ),
            Tab(
              icon: Icon(Icons.headset),
              text: "HEADSET",
            )
          ],
        ),
      ),
    );
  }
}
