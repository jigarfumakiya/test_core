import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppIconButton extends StatelessWidget {
  final IconData? icon;
  final String? assetPath;
  final VoidCallback onTap;

  /// App Icon that takes icon data

  const AppIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    this.assetPath,
  })  : assert(icon != null, 'icon data is required'),
        super(key: key);

  /// App Icon that takes assetPath
  const AppIconButton.formAsset({
    Key? key,
    required this.onTap,
    required this.assetPath,
    this.icon,
  })  : assert(assetPath != null, 'Asset path is required'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        onPrimary: Colors.black,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        minimumSize: const Size(0, 0),
        padding: const EdgeInsets.all(10),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        enableFeedback: true,
        elevation: 0,
      ),
      child: assetPath != null
          ? Image.asset(
              assetPath!,
              width: 22,
              height: 22,
              color: AppColors.iconColor,
            )
          : Icon(icon, size: 22, color: AppColors.iconColor),
    );
  }
}
