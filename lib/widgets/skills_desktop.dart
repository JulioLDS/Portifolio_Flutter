import 'package:flutter/material.dart';
import 'package:meu_portifolio/constants/colors.dart';
import 'package:meu_portifolio/constants/skills_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Plataforms
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: Wrap(
              spacing: 5.0,
              runSpacing: 5.0,
              children: [
                for (int i = 0; i < plataformItems.length; i++)
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: CustomColor.bgLight2,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      leading: Image.asset(plataformItems[i]["img"], width: 26),
                      title: Text(plataformItems[i]["title"]),
                    ),
                  ),
              ],
            ),
          ),
        ),
        SizedBox(width: 50),

        //Skills
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                for (int i = 0; i < skillsItems.length; i++)
                  Chip(
                    padding: EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 16.0,
                    ),
                    backgroundColor: CustomColor.bgLight2,
                    label: Text(skillsItems[i]["title"]),
                    avatar: Image.asset(skillsItems[i]["img"]),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
