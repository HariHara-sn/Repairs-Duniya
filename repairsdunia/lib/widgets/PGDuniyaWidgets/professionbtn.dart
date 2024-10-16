import 'package:flutter/material.dart';


// Profession Button Widget
class ProfessionButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const ProfessionButton({
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
        width: 123,
        child: OutlinedButton(
          onPressed: onTap,
          style: ButtonStyle(
            side: WidgetStateProperty.all<BorderSide>(
              BorderSide(
                width: 1,
                color: isSelected ? Colors.black : Colors.white,
              ),
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
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
