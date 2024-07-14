import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Theme Change screen"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            RadioListTile<ThemeMode>(
                title: Text("Light Mode"),
                value: ThemeMode.light,
                groupValue: themeProvider.theme,
                onChanged: themeProvider.darkTheme),
            RadioListTile<ThemeMode>(
                title: Text("Dark Mode"),
                value: ThemeMode.dark,
                groupValue: themeProvider.theme,
                onChanged: themeProvider.darkTheme),
            RadioListTile<ThemeMode>(
                title: Text("System Mode"),
                value: ThemeMode.system,
                groupValue: themeProvider.theme,
                onChanged: themeProvider.darkTheme),
            SizedBox(
              height: 20.0,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
          ],
        ));
  }
}
