import 'package:adhakr/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'dikr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color1 = Colors.white;
  final Color color2 = Colors.black;
  @override
  Widget build(BuildContext context) {
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
                                fontSize: 25, color: Color(0xff106cb0)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ToggleSwitch(
                            // onToggle: (index) {
                            //   setState(() {
                            //     color1 = Colors.black;
                            //   });
                            // },
                            changeOnTap: true,
                            minWidth: 50,
                            cornerRadius: 20,
                            animate: false,
                            initialLabelIndex: 0,
                            totalSwitches: 2,
                            icons: const [
                              Icons.nightlight_round_rounded,
                              Icons.sunny
                            ],
                          )
                        ],
                      )
                    ])),
              ),
              Expanded(
                flex: 5,
                child: Container(
                    height: MediaQuery.of(context).size.height / 1.1,
                    decoration: const BoxDecoration(
                        color: Color(0xff4d90cd),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Color(0xff366895),
                            margin: const EdgeInsets.only(
                              top: 50,
                            ),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(9.0),
                                    child: Text("DHUHR",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(9.0),
                                    child: Text("30  SAFAR",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(9.0),
                                    child: Text("12:34 pm",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(9.0),
                                    child: Text("1444",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  )
                                ],
                              ),
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                          Image.asset("lib/assets/homeui.png", height: 70),
                          const Text(
                            "\"Keep your tounge wet with\nthe rememberence of Allah\"",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )
                        ])),
              )
            ],
          ),
        ));
  }
}
