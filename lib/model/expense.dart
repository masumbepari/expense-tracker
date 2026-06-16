import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formmatter = DateFormat.yMd();
enum Category {food, travel, education,subscription}

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.education: Icons.cast_for_education,
  Category.subscription: Icons.subscriptions
};

class Expense {
   Expense({
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

 String get getFormattedDate {
  return formmatter.format(date);
 }
}