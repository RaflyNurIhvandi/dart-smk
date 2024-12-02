import 'package:flutter/material.dart';

void main() {
  runApp(FlyApp());
}

class FlyApp extends StatefulWidget {
  @override
  State<FlyApp> createState() => _FlyAppState();
}

class _FlyAppState extends State<FlyApp> {
  final _formState = GlobalKey<FormState>();
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            "FlyApp",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          color: Colors.purple[200],
          child: Form(
            key: _formState,
            child: Column(
              children: [
                TextFormField(
                  controller: textController,
                  validator: (value) {
                    if (value == '') {
                      return "Text tidak boleh kososng";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Name"),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formState.currentState!.validate()) {
                        print("Validation success");
                      } else {
                        print("Validation failed");
                      }
                    },
                    child: Text("Submit"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}