import 'package:flutter/material.dart';
import 'package:flutterlkm/utils/constants/colors.dart';

class TSettingsMenuTile extends StatelessWidget {
  const TSettingsMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onTap,
  });

  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: TColors.appPrimary),
      title: Text(title, style: Theme.of(context).textTheme.titleLarge),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 14)),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
