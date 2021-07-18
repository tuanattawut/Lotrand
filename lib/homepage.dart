import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LOTRAND'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'รางวัลที่ 1',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                Text(
                  a.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                buttonrandsix(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'เลขหน้า 3 ตัว',
                  style: TextStyle(fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      b.toString(),
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      c.toString(),
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
                buttonrandtree(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'เลขท้าย 3 ตัว',
                  style: TextStyle(fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      d.toString(),
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      e.toString(),
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
                buttonrandafter(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'เลขท้าย 2 ตัว',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  f.toString(),
                  style: TextStyle(fontSize: 25),
                ),
                buttonrandtwo(),
              ],
            ),
            Row(
              children: [
                Text(
                  'Dev:TuASOLO',
                  style: TextStyle(
                    fontSize: 5,
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Column buttonrandsix() {
    return Column(
      children: [
        ElevatedButton(
          child: Text('สุ่ม'),
          onPressed: () {
            setState(() {
              int min = 100000;
              int max = 999999;
              Random random = Random();
              a = min + random.nextInt(max - min);
            });
          },
        ),
      ],
    );
  }

  Column buttonrandtree() {
    return Column(
      children: [
        ElevatedButton(
          child: Text('สุ่ม'),
          onPressed: () {
            setState(() {
              int min = 100;
              int max = 999;

              if (b == 0) {
                Random random = Random();
                b = min + random.nextInt(max - min);
              } else {
                Random random = Random();
                c = min + random.nextInt(max - min);
              }
            });
          },
        ),
      ],
    );
  }

  Column buttonrandafter() {
    return Column(
      children: [
        ElevatedButton(
          child: Text('สุ่ม'),
          onPressed: () {
            setState(() {
              int min = 100;
              int max = 999;

              if (d == 0) {
                Random random = Random();
                d = min + random.nextInt(max - min);
              } else {
                Random random = Random();
                e = min + random.nextInt(max - min);
              }
            });
          },
        ),
      ],
    );
  }

  Column buttonrandtwo() {
    return Column(
      children: [
        ElevatedButton(
          child: Text('สุ่ม'),
          onPressed: () {
            setState(() {
              int min = 10;
              int max = 99;

              Random random = Random();
              f = min + random.nextInt(max - min);
            });
          },
        ),
      ],
    );
  }
}
