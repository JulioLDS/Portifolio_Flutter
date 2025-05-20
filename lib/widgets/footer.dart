import 'package:flutter/material.dart';
import 'package:meu_portifolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    // ...existing code...
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            "Feito por Julio Lima com Flutter 3.27",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: CustomColor.whiteSecondary,
            ),
          ),
          SizedBox(height: 8),
          Text(
            "https://www.flaticon.com/free-icons/graphic-design",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: CustomColor.whiteSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
