import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSearchHomePage extends StatelessWidget {
  const TSearchHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.search_favorite),
            labelText: "Search",
            suffixIcon: Icon(Icons.clear)
          ),
        )
      ],
    );
  }
}