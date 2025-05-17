import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meu_portifolio/constants/colors.dart';
import 'package:meu_portifolio/constants/size.dart';
import 'package:meu_portifolio/widgets/drawer_mobile.dart';
import 'package:meu_portifolio/widgets/header_desktop.dart';
import 'package:meu_portifolio/widgets/header_mobile.dart';
import 'package:meu_portifolio/widgets/main_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
                  : const DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              const MainDesktop(),

              //Skills
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),

              //Projects
              Container(height: 500, width: double.maxFinite),

              //Contact
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),

              //Footer
              Container(height: 500, width: double.maxFinite),
            ],
          ),
        );
      },
    );
  }
}
