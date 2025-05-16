import 'package:flutter/material.dart';
import 'package:meu_portifolio/constants/colors.dart';

class SiteLogo extends StatefulWidget {
  const SiteLogo({super.key,this.onTap,});
  final VoidCallback? onTap;
  @override
  State<SiteLogo> createState() => _SiteLogoState();
}

class _SiteLogoState extends State<SiteLogo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Text(
        "Julio LDS",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: CustomColor.bluePrimary,
          color: CustomColor.bluePrimary,
        ),
      ),
    );
  }
}
