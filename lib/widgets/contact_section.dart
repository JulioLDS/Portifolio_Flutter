import 'package:flutter/material.dart';
import 'package:meu_portifolio/constants/colors.dart';
import 'package:meu_portifolio/constants/size.dart';
import 'package:meu_portifolio/constants/sns_links.dart';
import 'package:meu_portifolio/widgets/custom_text_field.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          //title
          const Text(
            "Entre em contato",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),

          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailFieldDesktop();
                }
                //else
                return buildNameEmailFieldMobile();
              },
            ),
          ),
          const SizedBox(height: 15),
          //message
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: CustomTextField(
              hintText: "Digite sua mensagem aqui",
              maxLine: 16,
            ),
          ),
          const SizedBox(height: 20),
          //send button
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Enviar",
                  style: TextStyle(
                    fontSize: 16,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.blueSecondary,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
          ),

          const SizedBox(height: 30),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(height: 15),

          //SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset("github.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.linkedin]);
                },
                child: Image.asset("linkedin.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.instagram]);
                },
                child: Image.asset("instagram.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.telegram]);
                },
                child: Image.asset("telegram.png", width: 28),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        //name
        Flexible(child: CustomTextField(hintText: "Nome")),
        const SizedBox(width: 15),
        //email
        Flexible(child: CustomTextField(hintText: "@gmail")),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        //name
        Flexible(child: CustomTextField(hintText: "Nome")),
        const SizedBox(height: 15),
        //email
        Flexible(child: CustomTextField(hintText: "@gmail")),
      ],
    );
  }
}
