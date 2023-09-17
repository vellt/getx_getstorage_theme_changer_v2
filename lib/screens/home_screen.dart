import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_getstorage_theme_changer_v2/controllers/theme_controller.dart';
import 'package:getx_getstorage_theme_changer_v2/storage/theme_storage.dart';

class HomeScreen extends StatelessWidget {
  ThemeController theme;
  HomeScreen(this.theme);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.bodyColor,
        appBar: AppBar(
          title: Text(
            "Theme Changer v2",
            style: TextStyle(color: theme.textColor),
          ),
          centerTitle: true,
          backgroundColor: theme.headerColor,
        ),
        body: Center(
          child: Icon(
            (theme.currentTheme == Themes.dark)
                ? Icons.dark_mode
                : Icons.light_mode,
            color: theme.buttonColor,
            size: 50,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
            label: Text(
              "change",
              style: TextStyle(
                color: theme.textColor,
              ),
            ),
            backgroundColor: theme.buttonColor,
            onPressed: () {
              theme.switchTheme();
            },
            icon: Icon(
              CupertinoIcons.arrow_2_circlepath,
              color: theme.iconColor,
            )),
      ),
    );
  }
}
