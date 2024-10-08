import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

import 'latest_transaction_section.dart';
import 'quick_invoice_form.dart';
import 'quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransactionSection(),
          Divider(
            height: 48,
            color: Color(0xFFF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
