import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/image_text_widgets.dart/vertical_image_text.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';

class THomeHospitalList extends StatelessWidget {
  const THomeHospitalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.hospitalIcon,
            title: 'Rumah Sakit',
            onTap: (){},
          );
        },
      ),
    );
  }
}