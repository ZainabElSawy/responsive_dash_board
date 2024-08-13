import 'package:flutter/material.dart';

import '../models/item_details_model.dart';
import 'item_details.dart';

class IncomeDetails extends StatefulWidget {
  const IncomeDetails({super.key});

  @override
  State<IncomeDetails> createState() => _IncomeDetailsState();
}

class _IncomeDetailsState extends State<IncomeDetails> {
  List<ItemDetailsModel> items = [
    ItemDetailsModel(
        color: const Color(0xFF208BC7), title: 'Design service', value: '40%'),
    ItemDetailsModel(
        color: const Color(0xFF4DB7F2), title: 'Design product', value: '25%'),
    ItemDetailsModel(
        color: const Color(0xFF064060), title: 'Product royalti', value: '20%'),
    ItemDetailsModel(
        color: const Color(0xFFE2DECD), title: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
        itemBuilder: (context, index) =>
            ItemDetails(itemDetailsModel: items[index]),
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: items.length);
  }
}

