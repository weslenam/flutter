import 'package:flutter/material.dart';

void main() => {runApp(Main())};

class Main extends StatelessWidget {
  Main({Key? key}) : super(key: key);
  static const String _appName = "Lists";

  List<String> it = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item22',
    'Item8',
    'Item9',
    'Item11',
    'Item12',
    'Item13',
    'Item14',
    'Item15',
    'Item16',
    'Item122',
    'Item18',
    'Item19',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _appName,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // title: const Text(_appName, style: theme.getTextStyleDefault),
          title: const Text(_appName, style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) =>
              const Divider(color: Colors.black54),
          itemCount: it.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(
                Icons.add,
                color: Colors.amber,
              ),
              onTap: () {
                print(it[index]);
              },
              title: Text(it[index]),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('subtitulo'), Text('subtitulo')]),
            );
          },
        ),
      ),
    );
  }
}
