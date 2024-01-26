import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ui_practise/pages/dustbin.dart';
import 'package:ui_practise/pages/frontdoor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("4A9BC0"),
        toolbarHeight: 0.0,
      ),
      body: ListView(
        children: [
          Container(
            height: 340.0,
            width: 200.0,
            color: HexColor("4A9BC0"),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ListTile(
                  title: Text(
                    "Good Morning,",
                    style: TextStyle(
                      fontFamily: "Outfit",
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.white),
                  ),
                  subtitle: Text(
                    "Sanjaya Shrestha",
                    style: TextStyle(
                      fontFamily: "Outfit",
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  trailing: Icon(Icons.circle_notifications_rounded,
                      color: Colors.white, size: 50.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 200.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("image/cloud.png"),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jan 12, 2024 8:00 am"),
                              Text(
                                "Cloudy",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Sydney, Australia"),
                            ],
                          ),
                          const Text(
                            "18°C",
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 3.0,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 80.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: HexColor("D9D9D9"),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("image/humidity.png"),
                                    const Text(
                                      "97%",
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Humidity",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 80.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: HexColor("D9D9D9"),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("image/visibility.png"),
                                    const Text(
                                      "8 km",
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Visibility",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 80.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: HexColor("D9D9D9"),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("image/wind.png"),
                                    const Text(
                                      "3 km/hr",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "SE Wind",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const MaterialButton(
                onPressed: null,
                child: Text(
                  "Rooms",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
                ),
              ),
              MaterialButton(
                hoverColor: HexColor("4A9BBF"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FrontDoor(),
                    ),
                  );
                },
                child: const Text(
                  "Front Door Lock",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
                ),
              ),
              MaterialButton(
                hoverColor: HexColor("4A9BBF"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Dustbin(),
                    ),
                  );
                },
                child: const Text(
                  "Dustbin",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 180.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: HexColor("D9D9D9"),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "20°C",
                        style: TextStyle(
                            backgroundColor: HexColor("4A9BBF"),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Image.asset("image/living.png",height: 100.0,),
                      const Text(
                        "Living Room",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "6",
                            style: TextStyle(
                                backgroundColor: Colors.yellow, fontSize: 16.0),
                          ),
                          Text(
                            "devices",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 180.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: HexColor("D9D9D9"),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "20°C",
                        style: TextStyle(
                            backgroundColor: HexColor("4A9BBF"),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Image.asset("image/kitchen.png",height: 100.0,),
                      const Text(
                        "Kitchen Room",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "6",
                            style: TextStyle(
                                backgroundColor: Colors.yellow, fontSize: 16.0),
                          ),
                          Text(
                            "devices",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 180.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: HexColor("D9D9D9"),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "20°C",
                        style: TextStyle(
                            backgroundColor: HexColor("4A9BBF"),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Image.asset("image/bedroom.png",height: 100.0,),
                      const Text(
                        "Master Bedroom",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "6",
                            style: TextStyle(
                                backgroundColor: Colors.yellow, fontSize: 16.0),
                          ),
                          Text(
                            "devices",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 180.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: HexColor("D9D9D9"),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "20°C",
                        style: TextStyle(
                            backgroundColor: HexColor("4A9BBF"),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Image.asset("image/bedroom.png",height: 100.0,),
                      const Text(
                        "Guest Bedroom",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "6",
                            style: TextStyle(
                                backgroundColor: Colors.yellow, fontSize: 16.0),
                          ),
                          Text(
                            "devices",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: HexColor("4A9BC0"),
        backgroundColor: Colors.white,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.keyboard_voice_rounded,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 35,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
