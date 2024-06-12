import 'package:flutter/material.dart';
import 'package:flutterlkm/features/authentication/screens/homepage/widgets/maps_homepage.dart';
import 'package:flutterlkm/features/authentication/screens/homepage/widgets/news_homepage.dart';
import 'package:flutterlkm/features/authentication/screens/homepage/widgets/profil_header.dart';
import 'package:flutterlkm/features/authentication/screens/homepage/widgets/search_homepage.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      // drawer: const TNavBar(),
      // appBar: AppBar(
      //   flexibleSpace: Container(
      //     decoration: const BoxDecoration(
      //       gradient: TColors.appBarGradient
      //     ),
      //   ),
      // ),

      // body: const SingleChildScrollView(
      //   child: Padding(
      //     padding: TSpacingStyle.paddingWithAppBarHeight,
      //     child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TProfilHomePage(),

              SizedBox(height: TSizes.spaceAntaraInputField,),

              TSearchHomePage(),

              SizedBox(height: TSizes.spaceAntaraSection,),

              TMapsHomePage(),

              SizedBox(height: TSizes.spaceAntaraSection,),

              TNewsHomePage()
            ],
          );
  }
}