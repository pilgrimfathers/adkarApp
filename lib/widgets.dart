import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DikrCont extends StatefulWidget {
  const DikrCont({Key? key}) : super(key: key);

  @override
  State<DikrCont> createState() => _DikrContState();
}

class _DikrContState extends State<DikrCont> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.1,
          child: Text(
            "dikr",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}

class DarkThemePreference {
  static const Theme_Status = "THEMESTATUS";

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(Theme_Status, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(Theme_Status) ?? false;
  }
}

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;
  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }
}
