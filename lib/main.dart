import 'package:flutter/material.dart';

import 'models/transation.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expenses',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      value: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      value: 16.53,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: Column(
        children: [
          Card(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    child: Card(
                      child: Text('Gráfico'),
                    ),
                  ),
                  Column(
                    children: _transactions.map((transaction) {
                      return Card(
                        child: Text(transaction.title),
                      );
                    }).toList(),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nova despesa',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Valor',
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
