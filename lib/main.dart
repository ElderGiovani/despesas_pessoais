import 'package:despesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  final titleController = TextEditingController();
  final valueController = TextEditingController();

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
        backgroundColor: const Color.fromARGB(255, 255, 176, 7),
        title: const Text('Despesas pessoais'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //spaceAround:deixa espaço ao redoreixo principal"vertical"
        crossAxisAlignment: CrossAxisAlignment.stretch, // stretch:estica
        //eixo secundario "horizontal"
        children: <Widget>[
          const SizedBox(
            // SizedBox mais para espaçamento
            child: Card(
              color: Color.fromARGB(255, 185, 10, 216),
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              //mapeamento entre objetos nao visuais convertendo em elementos visuais usando  a função "Map"
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      // Usa "Container" quando precisa mais de duas propriedades. EX : margin,altuira ,largura,borda, cor
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2)),
                      padding: const EdgeInsets.all(10),
                      // conteudo > padding > border > margin //
                      child: Text(
                        'R\$ ${tr.value.toStringAsFixed(2)}', //toStringAsFixed casas decimais
                        style: const TextStyle(
                          //elemento para estilizar o bloco
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tr.title,
                          style: const TextStyle(
                            //elemento para estilizar o texto
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat("d MMM y").format(tr.date),
                          style: const TextStyle(
                            //elemento para estilizar a data
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
          const Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      labelText: 'Título',
                    ),
                  ),
                  TextField(
                    controller: valueController,
                    decoration: InputDecoration(
                      labelText: 'Valor (R\$)',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          print(titleController.text);
                          print(valueController);
                        },
                        child: Text(
                          'Nova Transação',
                          style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void newMethod() {}
}
