import 'package:flutter/material.dart';

class ExpensiveForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();
  final void Function(String, double) onSubmit;

  ExpensiveForm({Key? key, required this.onSubmit}) : super(key: key);

  TransactionForm() {
    titleController.text = "";
    valueController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.purple[200]!,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: titleController,
            decoration: InputDecoration(
              labelText: 'Nova despesa',
              labelStyle: TextStyle(
                color: Colors.purple[100],
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.purple[200]!,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: valueController,
            decoration: InputDecoration(
              labelText: 'Valor R\$',
              labelStyle: TextStyle(
                color: Colors.purple[100],
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          child: TextButton(
            child: Text(
              'Adicionar',
              style: TextStyle(color: Colors.purple[100]!),
            ),
            onPressed: () {
              onSubmit(
                titleController.text,
                double.parse(valueController.text),
              );
            },
          ),
        ),
      ],
    );
  }
}
