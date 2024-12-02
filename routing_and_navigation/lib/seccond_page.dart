import 'package:flutter/material.dart';
import 'main.dart';

class SeccondPage extends StatefulWidget {
  final String params;
  const SeccondPage({Key? key, required this.params}): super(key: key);

  @override
  _SeccondPageState createState() => _SeccondPageState();
}

class _SeccondPageState extends State<SeccondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "Second Page",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        color: Colors.purple[200],
        child: Center(
          child: Column(
            children: [
              Text(
                widget.params
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, "Ini argumen pop");
                },
                child: Text("Go back")
              ),
            ],
          ),
        ),
      ),
    );
  }
}