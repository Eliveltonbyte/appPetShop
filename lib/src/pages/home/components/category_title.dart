//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quitanda/src/config/custom_colors.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onPressed,
  });

  final String category;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected
                ? CustomColors.customSwatchColor
                : Colors.transparent,
          ),
          child: Text(
            category,
            style: TextStyle(
                color: isSelected
                    ? CustomColors.customContrastColor
                    : const Color.fromARGB(106, 218, 3, 3),
                fontWeight: FontWeight.bold,
                fontSize: isSelected ? 16 : 14),
          ),
        ),
      ),
    );
  }
}
