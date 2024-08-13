import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

import '../models/transaction_history_model.dart';

class TransactionHistoryListView extends StatefulWidget {
  const TransactionHistoryListView({super.key});

  @override
  State<TransactionHistoryListView> createState() =>
      _TransactionHistoryListViewState();
}

class _TransactionHistoryListViewState
    extends State<TransactionHistoryListView> {
  List<TransactionModel> transactions = const [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: '\$20,129',
        isWithdrawal: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: '\$2,000',
        isWithdrawal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: '\$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: transactions.length,
      itemBuilder: (ctx, index) =>
          TransactionItem(transactionModel: transactions[index]),
      separatorBuilder: (ctx, index) => const SizedBox(height: 12),
    );
  }
}
