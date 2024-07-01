import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/appbar/appbar.dart';
import 'package:flutterlkm/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutterlkm/common/widgets/images/circular_image.dart';
import 'package:flutterlkm/common/widgets/images/rounded_container.dart';
import 'package:flutterlkm/common/widgets/notification/icon/notif_menu_icon.dart';
import 'package:flutterlkm/common/widgets/texts/section_heading.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:flutterlkm/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [TNotifCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Search Bar
                      const SizedBox(height: TSizes.spaceAntaraItem),
                      const TSearchContainer(
                          text: 'Pencarian',
                          showBackground: false,
                          showBorder: true,
                          padding: EdgeInsets.zero),
                      const SizedBox(height: TSizes.spaceAntaraSection),

                      /// -- Featured Brands Heading
                      TSectionHeading(
                        title: 'Featured Brands',
                        textColor: TColors.black,
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSizes.spaceAntaraItem / 1.5),

                      /// -- Brands
                      TRoundedContainer(
                        padding: const EdgeInsets.all(TSizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            // -- Gambar Brand
                            TCircularImage(
                              image: TImages.hospitalIcon,
                              isNetworkImage: false,
                              backgroundColor: Colors.transparent,
                              overlayColor:
                                  dark ? TColors.white : TColors.black,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
