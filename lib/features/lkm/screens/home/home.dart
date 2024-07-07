import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutterlkm/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutterlkm/common/widgets/item/item_card/item_card_vertical.dart';
import 'package:flutterlkm/common/widgets/layouts/grid_layout.dart';
import 'package:flutterlkm/common/widgets/texts/section_heading.dart';
import 'package:flutterlkm/features/lkm/screens/home/widgets/carousel_slider.dart';
import 'package:flutterlkm/features/lkm/screens/home/widgets/home_app_bar.dart';
import 'package:flutterlkm/features/lkm/screens/home/widgets/home_hospital_list.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //// -- Header --
            const TPrimaryHeaderContainer(
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
                          textColor: TColors.white,
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
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // --- Carousel ---
                  const TCarouselSlider(banners: [
                    TImages.banner1,
                    TImages.banner2,
                    TImages.banner3
                  ]),
                  const SizedBox(height: TSizes.spaceAntaraSection),

                  TSectionHeading(
                    title: 'Popular Products',
                    textColor: TColors.black,
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceAntaraItem),

                  // --- Item Card ---
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TItemCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
