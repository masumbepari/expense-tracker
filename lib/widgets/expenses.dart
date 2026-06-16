import 'package:expense_tracker/widgets/expense_list/expenses_list.dart';
import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Bandarban Travel",
      amount: 10000,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: "Google Cloud",
      amount: 300.00,
      date: DateTime.now(),
      category: Category.subscription,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        actions: [
          IconButton(
            tooltip: 'add expnese',
            onPressed: () {},
            icon: Icon(Icons.add),
            
          ),
        ],
      ),
      body: Column(
        children: [
          Text("The Chart"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
