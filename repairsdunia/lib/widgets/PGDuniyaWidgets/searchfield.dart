
import 'package:flutter/material.dart';
import 'package:repairsdunia/theme/Appcolors.dart';
// Search Field Widget
class SearchField extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const SearchField({super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: const Icon(Icons.search),
        title: TextField(
          decoration: InputDecoration(
            hintStyle: const TextStyle(color: AppColors.greytext, fontSize: 15),
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
        trailing: Icon(icon),
      ),
    );
  }
}
