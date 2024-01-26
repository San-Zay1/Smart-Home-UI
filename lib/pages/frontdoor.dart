import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FrontDoor extends StatefulWidget {
  const FrontDoor({super.key});

  @override
  State<FrontDoor> createState() => _FrontDoorState();
}

class _FrontDoorState extends State<FrontDoor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Front Door Lock",
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,fontFamily: "Outfit"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 450.0,
              width: 380.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: HexColor("4A9BBF"),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 220,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                        ),
                        child: ListTile(
                          leading: Image.asset("image/right.png"),
                          title: const Text("Wi-Fi Connected"),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Image.asset("image/battery.png"),
                            const Text("65%"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 300.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.white),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.asset(
                        "image/sanjaya.JPG",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 50.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: HexColor("49C7D6"),
                            ),
                            child: const Icon(
                              Icons.lock_open_rounded,
                              size: 35.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          ">  >  >",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: HexColor("49C7D6"),
                          ),
                        ),
                        const Icon(
                          Icons.lock,
                          size: 35.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 180.0,
                width: 180.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: HexColor("49C7D6"),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.white,
                      ),
                      child: Image.asset("image/key.png",),
                    ),
                    const Text("Send Key",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              Container(
                height: 180.0,
                width: 180.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: HexColor("49C7D6"),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.white,
                      ),
                      child: Image.asset("image/keypad.png",),
                    ),
                    const Text("Send Code",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
