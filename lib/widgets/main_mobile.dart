import 'package:flutter/material.dart';
import 'package:meu_portifolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.0),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //avatar img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  CustomColor.scaffoldBg.withOpacity(0.6),
                  CustomColor.scaffoldBg.withOpacity(0.6),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset("assets/boy.png", width: screenWidth),
          ),
          const SizedBox(height: 30.0),
          //Intro Message
          const Text(
            "Olá, \nMeu nome é Julio\n Este é meu portifólio em Flutter",
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 190,
            height: screenHeight / 18,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Contate-me"),
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.bluePrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
