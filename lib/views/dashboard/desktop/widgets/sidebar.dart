import 'package:coligo_test/resources/colors.dart';
import 'package:coligo_test/resources/constants.dart';
import 'package:coligo_test/resources/routes.dart';
import 'package:coligo_test/views/shared_widgets/filled_btn.dart';
import 'package:coligo_test/views/shared_widgets/reusable_text.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({required this.width, super.key});
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: const BoxDecoration(
        gradient: RColors.sideBar,
      ),
      child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
          itemCount: Constants.sidebarTiles.length + 2,
          controller: ScrollController(),
          itemBuilder: (context, i) {
            // App Title
            if (i == 0) {
              return const Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: RText(
                  txt: Constants.appTitle,
                  size: 30,
                  color: Colors.white,
                  weight: FontWeight.w400,
                  align: TextAlign.center,
                ),
              );
            }
            // Logout Button
            if (i == Constants.sidebarTiles.length + 1) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: RFilledButton(
                  title: 'Log Out',
                  width: 100,
                  height: 50,
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(MyRoutes.homeScreen);
                  },
                ),
              );
            }

            // Buttons
            final tile = Constants.sidebarTiles[i - 1];

            return Material(
              type: MaterialType.transparency,
              child: ListTile(
                hoverColor: Colors.white60,
                leading: Icon(
                  tile.icon,
                  size: 35,
                  // Todo: change state when clicked
                  color: Colors.white,
                ),
                title: RText(
                  txt: tile.name,
                  color: Colors.white,
                  size: 16,
                  weight: FontWeight.w300,
                ),
                onTap: () {
                  // Todo: Navigate to screens
                },
              ),
            );
          },
          // Seperator Between each tile
          separatorBuilder: (_, __) => const SizedBox(height: 20)),
    );
  }
}
