import 'package:flutter/material.dart';

// Gender Option Button Widget
class GenderOptionButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderOptionButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 100,
        child: OutlinedButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              isSelected ? Colors.black : Colors.white,
            ),
            shape: WidgetStateProperty.all<OutlinedBorder>(
              const StadiumBorder(),
            ),
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.symmetric(horizontal: 20),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.grey[200]! : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
