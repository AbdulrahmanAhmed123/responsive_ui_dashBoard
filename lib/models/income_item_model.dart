

import 'package:flutter/material.dart';

class IncomeItemModel {
 final String title;
  final String amount;
 final Color dotsIndecatorColor;
 const IncomeItemModel({
    required this.title,
    required this.amount,
    required this.dotsIndecatorColor,
  });
}