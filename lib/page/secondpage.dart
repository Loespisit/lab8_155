import 'package:flutter/material.dart';
import 'package:lab8_155/page/thirdpage.dart'; // Import ThirdPage

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is Second Page"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(), // Go to ThirdPage
                  ),
                );
              },
              child: Text("Go to Third Page"),
            ),
            TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: "Name-LastName",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
