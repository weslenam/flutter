import 'package:app3/home.dart';
import "package:flutter/material.dart";

void main() => {runApp(const WidgetApp())};

class Leading extends StatelessWidget {
  const Leading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.menu,
        color: Colors.orange,
      ),
      onPressed: () {
        // ignore: avoid_print
        print(const Text("teste"));
      },
    );
  }
}

class WidgetApp extends StatelessWidget {
  const WidgetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "WidgetApp",
        home: Scaffold(
            appBar: AppBar(
              leading: const Leading(),
              title: Image.asset('assets/images/logo_w.png'),
              centerTitle: true,
              elevation: 5,
              backgroundColor: const Color(0xff113558),
            ),
            body: const Padding(
              padding: EdgeInsets.all(20.0),
              // ignore: unnecessary_const
              child: const Home(),
            )));
  }
}
