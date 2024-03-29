import 'package:expense_tracker/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
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
        title: 'Flutter course',
        amount: 15.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 5.49,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Toy',
        amount: 20.99,
        date: DateTime.now(),
        category: Category.hobby)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text("app bar"),
        const Text("chart"),
        ExpensesList(expenses: _registeredExpenses),
      ]),
    );
  }
}
