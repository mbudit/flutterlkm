import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:flutterlkm/utils/constants/text_strings.dart';
import 'package:flutterlkm/utils/constants/times.dart';

class TNewsHomePage extends StatelessWidget {
  const TNewsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://teramedik.com/cenews/wp-content/uploads/2022/11/Jenis-Sistem-Informasi-Kesehatan-2-e1667447489351.jpeg',
      'https://mirroradvertising.id/wp-content/uploads/2019/02/poster-kesehatan-gigi.jpg',
      'https://marketplace.canva.com/EAF2Shs2NtU/1/0/1600w/canva-ungu-kuning-ilustrasi-animasi-lucu-presentasi-kesehatan-mental-HNzuGfLZuqE.jpg'
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          TTexts.hospitalNews,
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: TSizes.fontSizeMn, fontWeight: FontWeight.w500),
        ),

        const SizedBox(
          height: TSizes.spaceAntaraItem,
        ),

        // Automation Slider News
        CarouselSlider(
            items: [
              ...imgList
                  .map((e) => Center(
                        child: Image.network(e),
                      ))
                  .toList(),
            ],
            options: CarouselOptions(
                height: TSizes.heightSlider,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: TTimes.autoImageSliderInterval),
                autoPlayAnimationDuration: const Duration(milliseconds: TTimes.autoImageSliderAnimation),
                enlargeCenterPage: true,
                enlargeFactor: TSizes.sizeFactor))
      ],
    );
  }
}
