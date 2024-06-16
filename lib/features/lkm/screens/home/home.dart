import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutterlkm/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutterlkm/features/lkm/screens/home/widgets/home_app_bar.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -- Header --
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // -- AppBar --
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceAntaraSection,
                  ),

                  // -- Search Bar --
                  TSearchContainer(
                    text: 'Pencarian',
                    showBackground: true,
                    showBorder: true,
                  ),
                  SizedBox(
                    height: TSizes.spaceAntaraSection,
                  ),

                  // -- Categories --
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


