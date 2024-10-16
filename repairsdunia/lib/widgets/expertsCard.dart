import 'package:flutter/material.dart';
import 'package:repairsdunia/theme/Appcolors.dart';

// Widget for expert cards
Widget expertcard(String title, String imagePath, Color containerColor) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: 174,
        height: 72,
        padding: const EdgeInsets.all(5),
        // margin: const EdgeInsets.symmetric(horizontal: 8,),

        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),

        child: CircleAvatar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          maxRadius: 80,
          child: Image.network(imagePath, height: 45,errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error, color: Colors.red);
            },
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            (loadingProgress.expectedTotalBytes ?? 1)
                        : null,
                  ),
                );
              }
            },),
        ),
      ),
      const SizedBox(height: 10),
      Text(title,
          style: const TextStyle(fontSize: 12, color: AppColors.customblack)),
    ]),
  );
}
