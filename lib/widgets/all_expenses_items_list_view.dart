import 'package:flutter/material.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpensesItemsListview extends StatefulWidget {
  const AllExpensesItemsListview({super.key});

  @override
  State<AllExpensesItemsListview> createState() =>
      _AllExpensesItemsListviewState();
}

class _AllExpensesItemsListviewState extends State<AllExpensesItemsListview> {
  final List<AllExpensesItemModel> expensesItems = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: 20.129,
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: 20.129,
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: "April 2022",
      price: 20.129,
    ),
  ];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        expensesItems.length,
        (index) => Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                allExpensesItemModel: expensesItems[index],
                isSelected: selectedItem == index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
