import 'package:flutter/material.dart';
import "./transaction_list.dart";
import './transactions_form.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

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

class _TransactionUserState extends State<TransactionUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(transactions: _transactions),
        TransactionForm(),
      ],
    );
  }
}
