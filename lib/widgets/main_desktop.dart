import 'package:flutter/material.dart';
import 'package:meu_portifolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(maxHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.start, // <-- Adicione esta linha
            children: [
              //Intro Message
              const Text(
                "Olá, \nMeu nome é Julio\n Este é meu portifólio em Flutter",
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 250,
                height: screenHeight / 18,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Contate-me",
                    style: TextStyle(
                      color: CustomColor.whitePrimary,
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.blueSecondary,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ),
            ],
          ),
          Image.asset("assets/boy.png", width: screenWidth / 2, height: 300),
        ],
      ),
    );
  }
}
