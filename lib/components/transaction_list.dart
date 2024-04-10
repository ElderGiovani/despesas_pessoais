import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key, required this.transactions});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tr) {
        //mapeamento entre objetos nao visuais convertendo em elementos visuais usando  a função "Map"
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                // Usa "Container" quando precisa mais de duas propriedades. EX : margin,altuira ,largura,borda, cor
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
    );
  }
}
