import 'package:adhan_dart/adhan_dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dikr.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hijri/digits_converter.dart';
import 'package:hijri/hijri_array.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color1 = Colors.white;
  final Color color2 = Colors.black;

  void toggleColours() {
    setState(() {});
  }

  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    Position position = await Geolocator.getCurrentPosition();
    return position;
  }

  //declaring poslat and poslong
  double poslat = 0;
  double poslong = 0;

  //a function to retireive the location coordinates
  void currLoc() async {
    Position position = await Geolocator.getCurrentPosition();
    poslat = position.latitude.toDouble();
    poslong = position.longitude.toDouble();
  }

  static CalculationParameters params = CalculationMethod.Karachi();
  static DateTime date = DateTime.now();

  var _today = HijriCalendar.now();
  String month = "month";

  DateTime time = DateTime.now();
  double containerHeight = 0;

  @override
  Widget build(BuildContext context) {
    String month = _today.toFormat("MMMM dd yyyy").toString();
    Coordinates coordinates = Coordinates(poslat, poslong);
    PrayerTimes prayerTimes = PrayerTimes(coordinates, date, params);
    String next = prayerTimes.nextPrayer();
    DateTime? nextPrayertime = prayerTimes.timeForPrayer(next);
    String current = prayerTimes.currentPrayer(date: DateTime.now());
    DateTime? currentPrayerTime = prayerTimes.timeForPrayer(current);
    String hour = time.hour.toString().padLeft(2, '0');
    String minute = time.minute.toString().padLeft(2, '0');
    String day = time.day.toString().padLeft(2, '0');
    String engmonth = time.month.toString().padLeft(2, '0');
    String year = time.year.toString();
    String completeTime = "$hour:$minute";
    bool _isDarktheme = false;

    return Scaffold(
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [DrawerHeader(child: Text("Header"))],
        )),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    color: Colors.white,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Builder(builder: (BuildContext context) {
                            return IconButton(
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                icon: Icon(Icons.menu));
                          }),
                          const Text(
                            "As-salamu alaykum",
                            style: TextStyle(
                                fontSize: 25, color: Color(0xff106cb0),fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                    ])),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff478bc6),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: const Color(0xff366895),
                          margin: const EdgeInsets.only(
                            top: 50,
                          ),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: Text(month,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: Text(
                                    "$day/$engmonth/$year",
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: Text(
                                    "now it is $next",
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: Text(
                                    completeTime,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                )
                              ],
                            )
                          ]),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => dikr()));
                          },
                          child: Container(
                            height: 120,
                            width: 300,
                            decoration: BoxDecoration(
                              boxShadow: [BoxShadow(blurRadius: 05)],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text("MORNING ADHKAR",
                                  style: TextStyle(
                                      color: Color(0xff106cb0),
                                      fontFamily: 'VT323',
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Coordinates coordinates =
                                Coordinates(poslat, poslong);
                            PrayerTimes prayerTimes =
                                PrayerTimes(coordinates, date, params);
                            print(prayerTimes.dhuhr);
                            print("pressed evening");
                          },
                          child: Container(
                            height: 120,
                            width: 300,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 05, color: Color(0xff03436e))
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text("EVENING ADHKAR",
                                  style: TextStyle(
                                      color: Color(0xff106cb0),
                                      fontFamily: 'VT323',
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        Image.asset("lib/assets/images/homeui.png", height: 70),
                        const Text(
                          "\"Keep your tounge wet with\nthe rememberence of Allah\"",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )
                      ]),
                ),
              )
            ],
          ),
        ));
  }
}
