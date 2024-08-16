import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, required this.text});
  final Color? backgroundColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          backgroundColor: backgroundColor ?? const Color(0xFF4DB7F2),
          padding: const EdgeInsets.all(20)),
      onPressed: () {},
      child: Text(
        text,
        style: AppStyles.styleSemiBold18(context).copyWith(
            color: backgroundColor != null
                ? const Color(0xFF4DB7F2)
                : Colors.white),
      ),
    );
  }
}
