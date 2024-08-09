import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key, required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: SvgPicture.asset(image),
        ),
        Transform.rotate(
          angle: 22 / 7,
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF064060),
          ),
        ),
      ],
    );
  }
}
