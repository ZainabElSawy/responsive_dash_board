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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 0;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: expensesItems[0],
              isSelected: selectedItem == 0,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 1;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: expensesItems[1],
              isSelected: selectedItem == 1,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = 2;
              });
            },
            child: AllExpensesItem(
              allExpensesItemModel: expensesItems[2],
              isSelected: selectedItem == 2,
            ),
          ),
        ),
      ],
    );
    // return Row(
    //   children: List.generate(
    //     expensesItems.length,
    //     (index) =>
    //   ),
    // );
  }
}
