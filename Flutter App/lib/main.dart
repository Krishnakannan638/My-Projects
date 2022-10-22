import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "KRISHNAKANNAN",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("BE.CSE", style: TextStyle(fontSize: 20)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Mycard(),
                Mycard(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Mycard(), Mycard()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Mycard(), Mycard()],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.blue,
        height: 60,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Icon(Icons.search),
          Icon(Icons.battery_unknown),
          Icon(Icons.event_busy),
          Icon(Icons.home),
        ]),
      ),
    );
  }
}

class Mycard extends StatelessWidget {
  const Mycard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(8),
      height: 150,
      width: 150,
      color: Colors.blue,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Icon(Icons.settings),
        Text(
          "title",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text("paragraph", style: TextStyle(fontSize: 20)),
      ]),
    );
  }
}
