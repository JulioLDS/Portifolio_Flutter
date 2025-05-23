import 'package:flutter/material.dart';
import 'package:meu_portifolio/constants/colors.dart';
import 'package:meu_portifolio/constants/skills_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500.0),
      child: Column(
        children: [
          //plataforms
          for (int i = 0; i < plataformItems.length; i++)
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20,
                ),
                leading: Image.asset(plataformItems[i]["img"], width: 26.0),
                title: Text(plataformItems[i]["title"]),
              ),
            ),
          const SizedBox(height: 50),
          //skills
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
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
        ],
      ),
    );
  }
}
