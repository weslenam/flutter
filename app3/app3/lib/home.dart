import "package:flutter/material.dart";
import 'package:app3/quotepage.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Pedidos");
  }
}

class Quote extends StatelessWidget {
  const Quote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => QuotePage()))
            },
        label: const Text(
          "Cotacoes",
          style: TextStyle(color: const Color(0xff113558)),
        ),
        icon: const Icon(
          Icons.plumbing,
          color: Colors.orange,
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xffdededa),
          minimumSize: const Size.fromHeight(50),
          elevation: 0,
        ));
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: const [Quote(), Order()],
      ),
    );
  }
}
