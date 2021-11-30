import 'package:despesas_pessoais/widgets/graphic.dart';
import 'package:despesas_pessoais/widgets/transaction_user.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: const [
                Graphic(),
                TransactionUser(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
