import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutterlkm/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutterlkm/common/widgets/item/item_card/item_card_vertical.dart';
import 'package:flutterlkm/common/widgets/texts/section_heading.dart';
import 'package:flutterlkm/features/lkm/screens/home/widgets/carousel_slider.dart';
import 'package:flutterlkm/features/lkm/screens/home/widgets/home_app_bar.dart';
import 'package:flutterlkm/features/lkm/screens/home/widgets/home_hospital_list.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //// -- Header --
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // -- AppBar --
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceAntaraSection),

                  // -- Search Bar --
                  TSearchContainer(
                    text: 'Pencarian',
                    showBackground: true,
                    showBorder: true,
                  ),
                  SizedBox(height: TSizes.spaceAntaraSection),

                  // -- Categories --
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // -- Heading --
                        TSectionHeading(
                          title: 'Klinik dan Puskesmas',
                          showActionButton: false,
                        ),
                        SizedBox(height: TSizes.spaceAntaraItem),

                        // -- Categories --
                        THomeHospitalList()
                      ],
                    ),
                  )
                ],
              ),
            ),

            //// -- Body --
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // --- Carousel ---
                  TCarouselSlider(banners: [TImages.banner1, TImages.banner2, TImages.banner3]),
                  SizedBox(height: TSizes.spaceAntaraSection),

                  // --- Item Card ---
                  TItemCardVertical()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
