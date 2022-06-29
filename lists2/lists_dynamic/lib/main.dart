import 'package:flutter/material.dart';
import "list_screen.dart";

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "Lista Dinamica", home: ListScreen());
  }
}
