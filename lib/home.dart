import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white10,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20))),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: MediaQuery.of(context).size.height / 1.3,
                    decoration: const BoxDecoration(
                        color: Color(0xff4d90cd),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            onPressed: () {},
                            child: Container(
                              height: 120,
                              width: 300,
                              decoration: BoxDecoration(
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
                          Image.asset(
                            height: 70,
                            "lib/assets/homeui.png",
                          ),
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
