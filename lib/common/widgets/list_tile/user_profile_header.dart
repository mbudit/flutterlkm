import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/images/circular_image.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileHeader extends StatelessWidget {
  const TUserProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(image: TImages.userImage, width: 50, height: 50, padding: 0),
      title: Text('M. Budi Triono', style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: TColors.white)),
      subtitle: Text('buditriono13@gmail.com', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: TColors.white)),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: TColors.white)),
    );
  }
}