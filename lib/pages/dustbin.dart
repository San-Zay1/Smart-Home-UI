import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:arc_progress_bar_new/arc_progress_bar_new.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class Dustbin extends StatefulWidget {
  const Dustbin({super.key});

  @override
  State<Dustbin> createState() => _DustbinState();
}

class _DustbinState extends State<Dustbin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dustbin Label",
          style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,fontFamily: "Outfit"),
        ),
      ),
      body: Container(
        color: HexColor("4195E9"),
        child: Column(
          children: [
            Container(
              height: 450.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ArcProgressBar(
                    percentage: 100.0,
                    arcThickness: 60,
                    innerPadding: 48,
                    strokeCap: StrokeCap.round,
                    handleSize: 50,
                    handleWidget: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.0)),
                    ),
                    centerWidget: const Text(
                      "Full",
                      style: TextStyle(
                          fontSize: 50.0, fontWeight: FontWeight.w500),
                    ),
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.red,
                  ),
                  Container(
                    height: 150.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: HexColor("4195E9"),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Dustbin Lid",
                          style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        LiteRollingSwitch(
                          //initial value
                          value: true,
                          textOn: 'Open', textOnColor: Colors.white,
                          textOff: 'Close',
                          colorOn: Colors.green,
                          colorOff: Colors.red,
                          iconOn: Icons.done,
                          iconOff: Icons.remove_circle_outline,
                          textSize: 16.0,
                          onChanged: (bool state) {},
                          onDoubleTap: () {},
                          onSwipe: () {},
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 180.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: HexColor("F9D16A"),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Label (%)",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "100 %",
                        style: TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 180.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: HexColor("34E0A2"),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Height (cm)",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "0 cm",
                        style: TextStyle(
                            fontSize: 50.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
