import 'package:despesas_pessoais/models/transaction.dart';

import 'package:flutter/material.dart';

main() {
  runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 44, 7),
        title: const Text('Despesas pessoais'),
      ),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.spaceAround, //spaceAround:deixa espço ao redor//
        //eixo principal"vertical"
        crossAxisAlignment: CrossAxisAlignment.stretch, // stretch:estica
        //eixo secundario "horizontal"
        children: <Widget>[
          const SizedBox(
            child: Card(
              color: Color.fromARGB(255, 18, 196, 228),
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(
                child: Text(tr.title),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
