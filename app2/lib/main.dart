import "package:flutter/material.dart";

/*
void main(List<String> args) {
  runApp(MyApp())  
}
*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();

    return MaterialApp(
        title: 'My app',
        color: Colors.amber,
        home: Scaffold(
          appBar: AppBar(title: Text("My App")),
          body: Center(
            child: Text("meu app"),
          ),
        ));
  }
}
