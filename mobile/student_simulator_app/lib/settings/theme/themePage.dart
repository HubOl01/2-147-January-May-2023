import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Styles/Themes.dart';
import '../../settings.dart';

dynamic isDarked = 0;

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = Theme.of(context).brightness;
    final themeChanger = Provider.of<ThemeProvider>(context);
    // _switch() async {
    //   if (brightness.name == ThemeMode.light.name) {
    //     isDarked = 2;
    //   } else {
    // isDarked = 1;
    // }
    // SharedPreferences prefs =
    //     await SharedPreferences.getInstance();
    // setState(() {
    //   prefs.setBool('isDarkTheme', isDarked);
    //   isDarked = prefs.getBool('isDarkTheme') ?? false;
    //   print("test: ${prefs.getBool('isDarkTheme').toString()}");
    // });
    // }

    // _switch();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Внешний вид"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Material(
              color: Theme.of(context).appBarTheme.backgroundColor,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ListTile(
                    title: const Text("Авто (по умолчанию)"),
                    trailing: Radio(
                        // overlayColor: MaterialStateColor.resolveWith(
                        //     (states) => Colors.blue),
                        // hoverColor: MaterialStateColor.resolveWith(
                        //     (states) => Colors.blue),
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => Colors.blue),
                        focusColor: MaterialStateColor.resolveWith(
                            (states) => Colors.blue),
                        value: ThemeMode.system,
                        groupValue: themeChanger.themeMode,
                        onChanged: themeChanger.toggleTheme)),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    thickness: 2.5,
                    height: 0,
                    // color: Colors.grey[400],
                  ),
                ),
                ListTile(
                    title: const Text("Светлый режим"),
                    trailing: Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => Colors.blue),
                        focusColor: MaterialStateColor.resolveWith(
                            (states) => Colors.blue),
                        value: ThemeMode.light,
                        groupValue: themeChanger.themeMode,
                        onChanged: themeChanger.toggleTheme)),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    thickness: 2.5,
                    height: 0,
                    // color: Colors.grey[400],
                  ),
                ),
                ListTile(
                    title: const Text("Темный режим"),
                    trailing: Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => Colors.blue),
                        focusColor: MaterialStateColor.resolveWith(
                            (states) => Colors.blue),
                        value: ThemeMode.dark,
                        groupValue: themeChanger.themeMode,
                        onChanged: themeChanger.toggleTheme)),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}