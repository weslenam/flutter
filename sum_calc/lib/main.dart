import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _Main createState() => _Main();
}

class _Main extends State<Main> {
  num num1 = 0, num2 = 0;
  dynamic resultado = 'Soma = ';

  @override
  Widget build(BuildContext context) {
    TextField num1 = TextField(
      keyboardType: TextInputType.number,
      style: const TextStyle(color: Colors.deepOrange),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange)),
          label: Text("Informe um numero"),
          labelStyle: TextStyle(color: Colors.deepOrange)),
      onChanged: (value) {
        this.num1 = num.parse(value);
      },
    );

    TextField num2 = TextField(
      keyboardType: TextInputType.number,
      style: const TextStyle(color: Colors.deepOrange),
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepOrange)),
          label: Text("Informe um numero"),
          labelStyle: TextStyle(color: Colors.deepOrange)),
      onChanged: (value) {
        this.num2 = num.parse(value);
      },
    );

    Text resultado = Text(
      this.resultado,
      style: const TextStyle(color: Colors.deepOrange),
    );

    ElevatedButton btn = ElevatedButton(
        onPressed: _calc,
        style: ElevatedButton.styleFrom(
          primary: Colors.deepOrange,
          textStyle: const TextStyle(color: Colors.white),
          minimumSize: const Size.fromHeight(40),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
        child: const Text("CALCULAR"));

    Padding separator = const Padding(padding: EdgeInsets.all(5));

    Column columns = Column(
      children: [
        num1,
        separator,
        num2,
        separator,
        btn,
        separator,
        resultado,
      ],
    );

    AppBar appBar = AppBar(
      title: const Text("Calculadora de Soma"),
      centerTitle: true,
      backgroundColor: Colors.deepOrange,
    );

    return MaterialApp(
        home: Scaffold(
      appBar: appBar,
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: columns,
          )),
    ));
  }

  void _calc() {
    setState(() {
      num result = num1 + num2;
      resultado = "Soma: $num1 + $num2 = $result";
    });
  }
}
