import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:BasicApp(),
  ));
}

class BasicApp extends StatefulWidget {
  @override
  State<BasicApp> createState() => _BasicAppState();
}

class _BasicAppState extends State<BasicApp> {

  int basicLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()  {
          setState(() {
            basicLevel += 1;
          });
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/goat.jpg'),
                radius: 40.0,
              ),
            ),
            const Divider(
              height: 60.0,
              color: Colors.grey,
            ),
            const Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Ekansh',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 28.0,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'Current Level',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              '$basicLevel',
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 28.0,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold
              )
            ),
            const SizedBox(height: 50.0),
            Row(
              children: const [
                Icon(
                  Icons.email,
                  color: Colors.lightBlue,
                ),
                SizedBox(width: 15.0),
                Text(
                    'aroraekansh2706@gmail.com',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

