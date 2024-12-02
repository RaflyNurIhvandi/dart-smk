import 'package:flutter/material.dart';
import './seccond_page.dart';

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
      routes: {
        '/seccond_page': (context) => SeccondPage(params: "Params untuk seccond page",)
      },
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
        color: Colors.purple[200],
        child: Center(
          child: ElevatedButton(
            onPressed: () async{
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SeccondPage(
                    params: "Params untuk seccond page",
                  )
                )
              );
              ScaffoldMessenger.of(context)
              ..removeCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('$result')));
            },
            child: Text("Go to seccond page")
          ),
        ),
      ),
    );
  }
}