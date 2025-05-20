import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meu_portifolio/constants/colors.dart';
import 'package:meu_portifolio/constants/size.dart';
import 'package:meu_portifolio/widgets/contact_section.dart';
import 'package:meu_portifolio/widgets/drawer_mobile.dart';
import 'package:meu_portifolio/widgets/footer.dart';
import 'package:meu_portifolio/widgets/header_desktop.dart';
import 'package:meu_portifolio/widgets/header_mobile.dart';
import 'package:meu_portifolio/widgets/main_desktop.dart';
import 'package:meu_portifolio/widgets/main_mobile.dart';
import 'package:meu_portifolio/widgets/projects_section.dart';
import 'package:meu_portifolio/widgets/skills_desktop.dart';
import 'package:meu_portifolio/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer:
              constraints.maxWidth >= kMinDesktopWidth
                  ? null
                  : DrawerMobile(
                    onNavItemTap: (int navIndex) {
                      scaffoldKey.currentState?.closeEndDrawer();
                      ScrollToSection(navIndex);
                    },
                  ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first),
                //MAIN
                if (constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      ScrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                if (constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),

                //Skills
                Container(
                  key: navbarKeys[1],
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColor.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //title
                      const Text(
                        "Habilidades",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      const SizedBox(height: 50),

                      //plataforms and skills
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        const SkillsDesktop()
                      else
                        const SkillsMobile(),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                //Projects
                ProjectsSection(key: navbarKeys[2]),
                const SizedBox(height: 30),

                //Contact
                ContactSection(key: navbarKeys[3]),

                //Footer
                Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void ScrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
