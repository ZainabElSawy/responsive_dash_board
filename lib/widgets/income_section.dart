import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';
import 'package:responsive_dash_board/widgets/income_header.dart';

import '../utils/size_config.dart';
import 'detailed_income_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [IncomeHeader(), IncomeBody()],
      ),
    );
  }
}

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1610
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16.0),
            child: DetailedIncomeChart(),
          ))
        : const Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
