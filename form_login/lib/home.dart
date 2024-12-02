import 'package:flutter/material.dart';
import 'package:form_login/copyright.dart';
import 'main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}): super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          "Home FlyApp",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Container(
        color: Colors.purple[200],
        child: Column(
          children: [
            Center(
              child: Text(
                "Selamat Anda Berhasil Login",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Center(
              child: Text(
                CopyrightRafly(),
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}