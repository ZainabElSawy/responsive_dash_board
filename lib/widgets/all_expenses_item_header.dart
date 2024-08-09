import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageBackground,
    this.imageColor,
  });
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: imageBackground ?? const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: SvgPicture.asset(image,
              colorFilter: ColorFilter.mode(
                  imageColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn)),
        ),
        Transform.rotate(
          angle: 22 / 7,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor ?? const Color(0xFF064060),
          ),
        ),
      ],
    );
  }
}
