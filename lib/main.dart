import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getx_getstorage_theme_changer_v2/controllers/theme_controller.dart';
import 'package:getx_getstorage_theme_changer_v2/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialLauncher());
}

class MaterialLauncher extends StatelessWidget {
  ThemeController theme = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      init: theme,
      builder: (theme) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Theme Changer v2',
          home: HomeScreen(theme),
        );
      },
    );
  }
}
