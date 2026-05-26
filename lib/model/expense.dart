import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
enum Category {food, travel, education,supscription}

class Expense extends StatelessWidget{
   Expense({super.key,
  required this.title,
  required this.amount,
  required this.date,
  required this.category
  }): id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  @override
  Widget build (BuildContext context){
    return Text("expense");
  }
}