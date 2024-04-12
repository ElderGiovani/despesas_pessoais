import 'package:despesas_pessoais/components/transaction_user.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 176, 7),
        title: const Text('Despesas pessoais'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //spaceAround:deixa espaço ao redoreixo principal"vertical"
          crossAxisAlignment: CrossAxisAlignment.stretch, // stretch:estica
          //eixo secundario "horizontal"
          children: <Widget>[
            SizedBox(
              // SizedBox mais para espaçamento
              child: Card(
                color: Color.fromARGB(255, 185, 10, 216),
                elevation: 5,
                child: Text('Gráfico'),
              ),
            ),
            TransactionUser(),
          ],
        ),
      ),
    );
  }
}
