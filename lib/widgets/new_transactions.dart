import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transation.dart';

class NewTransactions extends StatelessWidget {
  final List<Transaction> transactions;

  const NewTransactions({Key? key, required this.transactions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((transaction) {
        return Card(
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: 100,
                height: 50,
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  'R\$${transaction.value.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    DateFormat('d/MM/y').format(transaction.date),
                    style: TextStyle(
                      fontSize: 10,
                      letterSpacing: 1,
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
