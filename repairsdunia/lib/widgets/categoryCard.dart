import 'package:flutter/material.dart';

// Widget for category cards
Widget categoryCard(String title, String imagePath, Color containerColor) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 108, // Consider making this dynamic if needed
          height: 70, // Consider making this dynamic if needed
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
          ),
          // Handling errors if the image fails to load
          child: Image.network(
            imagePath,
            height: 40,
            errorBuilder: (context, error, stackTrace) {
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
            },
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    ),
  );
}

Widget booknowcard(String title, String imagePath, Color containerColor) {
  return Column(
    children: [
      Container(
        width: 150, // Consider making this dynamic if needed
        height: 120, // Consider making this dynamic if needed
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        // Handling errors if the image fails to load
        child: Image.network(
          imagePath,
          height: 10,
          errorBuilder: (context, error, stackTrace) {
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
          },
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(title, style: const TextStyle(fontSize: 12)),
    ],
  );
}
