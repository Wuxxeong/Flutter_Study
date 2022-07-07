import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'second app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('HUFSTUDY'),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 242, 255),
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print("menu button is clicked");
            }),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.add_location_alt_rounded))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                  backgroundImage: AssetImage('asset/mimoticon.png'),
                  radius: 60.0),
            ),
            Divider(
              height: 60.0,
              color: Colors.black,
              thickness: 1.0,
              endIndent: 30.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.white, letterSpacing: 2.0, fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Text('WooSung',
                style: TextStyle(
                    color: Colors.white, letterSpacing: 2.0, fontSize: 30.0)),
            SizedBox(height: 40.0),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0),
                Text("I'm studying at Hufs CES")
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0),
                Text('24years old')
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(width: 10.0),
                Text('Flutter developer')
              ],
            )
          ],
        ),
      ),
    );
  }
}
