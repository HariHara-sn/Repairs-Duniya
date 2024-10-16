import 'package:flutter/material.dart';



// Room Option Button Widget
class RoomOptionButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const RoomOptionButton({
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
        width: double.infinity, // This will ensure it takes full width
        child: OutlinedButton(
          onPressed: onTap,
          style: ButtonStyle(
            side: WidgetStateProperty.all<BorderSide>(
              BorderSide(
                width: 1,
                color: isSelected ? Colors.black : Colors.white,
              ),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    5.0), // Rectangle with slight border radius
              ),
            ),
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.all(15),
            ),
          ),
          child: Align(
            alignment: Alignment.centerLeft, // Aligns text to the left
            child: Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
