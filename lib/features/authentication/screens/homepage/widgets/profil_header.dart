import 'package:flutter/material.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';

class TProfilHomePage extends StatelessWidget {
  const TProfilHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image(
                image: AssetImage(TImages.userEmpty),
                fit: BoxFit.cover),
            ),
          ),
          accountName: Text(
            "Selamat Datang, Tokisaki Kurumi",
            style: TextStyle(
              color: TColors.appPrimary
            ),),
          accountEmail: Text(
            "tokisakikurumi@gmail.com",
            style: TextStyle(
              color: TColors.appPrimary
            ),),
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
        )
      ],
    );
  }
}