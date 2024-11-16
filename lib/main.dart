import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoScreen(),
    );
  }
}

class DemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets Demo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to start
          children: [
            // Row Example
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Row Example:'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Distribute evenly
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                  child: Center(child: Text('1')),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                  child: Center(child: Text('2')),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                  child: Center(child: Text('3')),
                ),
              ],
            ),
            Divider(),

            // Column Example
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Column Example:'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center, // Align children vertically
              crossAxisAlignment: CrossAxisAlignment.start, // Align children horizontally
              children: [
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.yellow,
                  child: Center(child: Text('A')),
                ),
                SizedBox(height: 10), // Spacer
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.orange,
                  child: Center(child: Text('B')),
                ),
                SizedBox(height: 10),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.purple,
                  child: Center(child: Text('C')),
                ),
              ],
            ),
            Divider(),

            // Stack Example
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Stack Example:'),
            ),
            Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.teal,
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Text(
                    'Overlay',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
            Divider(),

            // Expanded Example
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Expanded Example:'),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2, // Takes 2/3 of the space
                  child: Container(
                    height: 50,
                    color: Colors.pink,
                    child: Center(child: Text('2 Flex')),
                  ),
                ),
                Expanded(
                  flex: 1, // Takes 1/3 of the space
                  child: Container(
                    height: 50,
                    color: Colors.cyan,
                    child: Center(child: Text('1 Flex')),
                  ),
                ),
              ],
            ),
            Divider(),

            // Flexible Example
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Flexible Example:'),
            ),
            Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 50,
                    color: Colors.indigo,
                    child: Center(child: Text('Flexible')),
                  ),
                ),
                Container(
                  width: 100,
                  height: 50,
                  color: Colors.amber,
                  child: Center(child: Text('Fixed')),
                ),
              ],
            ),
            Divider(),

            // Center Example
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Center Example:'),
            ),
            Container(
              height: 100,
              color: Colors.lightGreen,
              child: Center(
                child: Text(
                  'Centered Text',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Divider(),

            // SizedBox Example
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('SizedBox Example:'),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: Container(
                color: Colors.grey,
                child: Center(child: Text('SizedBox')),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
