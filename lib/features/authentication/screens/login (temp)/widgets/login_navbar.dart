import 'package:flutter/material.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/image_strings.dart';
import 'package:flutterlkm/utils/constants/text_strings.dart';

class TNavBar extends StatelessWidget {
  const TNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image: AssetImage(TImages.userEmpty),
                  fit: BoxFit.cover,),
              ),
            ),
            accountName: Text("Username"), 
            accountEmail: Text("username@gmail.com"),
            decoration: BoxDecoration(
              gradient: TColors.appBarGradient
            )),
            ListTile(
              leading: Icon(Icons.info),
              title: Text(TTexts.informationTitle),
            )
        ],
      ),
    );
  }
}