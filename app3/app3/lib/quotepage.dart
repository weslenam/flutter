import "package:flutter/material.dart";
/*
class QuotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("quotepage")),
      body: const Text("corpo"),
    );
  }
}
*/

class QuotePage extends StatefulWidget {
  @override
  _QuotePage createState() => _QuotePage();
}

class _QuotePage extends State<QuotePage> {
  int clicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("quotepage")),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("clicks: $clicks"),
          ElevatedButton(onPressed: _add, child: const Text("Contar!"))
        ],
      )),
      floatingActionButton:
          FloatingActionButton(onPressed: _add, child: const Icon(Icons.add)),
    );
  }

  void _add() {
    setState(() {
      clicks++;
    });
  }
}
