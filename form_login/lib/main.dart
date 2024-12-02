import 'dart:html';

import 'package:flutter/material.dart';
import 'package:form_login/copyright.dart';
import './home.dart';

void main() {
  runApp(FlyApp());
}

class FlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlyApp",
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: MyHomePage(title: "FlyApp"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}): super(key:key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Error_To_Broo_Haha cuaksss = Error_To_Broo_Haha();
  Tidak_Semudah_Itu_Ferguso hayoloo = Tidak_Semudah_Itu_Ferguso();
  final _globalKeyVar = GlobalKey<FormState>();
  final _formState = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: const Icon(
          Icons.ac_unit,
          color: Colors.white,
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50, left: 15, right: 15),
          color: Colors.purple[200],
          child: Form(
            key: _formState,
            child: Column(
              children: [
                Text(
                  "FORM LOGIN",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Center(
                  key: _globalKeyVar,
                  child: SizedBox(
                    height: 20,
                    child: OjoNurun(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == '') {
                      return "Text tidak boleh kososng";
                    } else if (cuaksss.Makane_Ojo_Nurun('$value')) {
                      return "Email tidak valid";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Email"),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  controller: passController,
                  validator: (value) {
                    if (value == '') {
                      return "Text tidak boleh kososng";
                    } else if (hayoloo.Yang_Bener_Ajaa_Rugi_Dong('$value')) {
                      return "Password tidak valid";
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Password"),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formState.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (content) {
                              return const Home();
                            }
                          )
                        );
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
    );
  }
}