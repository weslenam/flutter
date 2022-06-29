import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<String> items = ['dfdsfsdf', 'dasdasd'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("lista")),
      body: ListView.separated(
        separatorBuilder: (context, index) =>
            const Divider(color: Colors.amber),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(Icons.add, color: Colors.white),
            ),
            title: Text(
              items[index],
              style: const TextStyle(color: Colors.amber),
            ),
          );
        },
      ),
      floatingActionButton: ,
    );
  }
}
