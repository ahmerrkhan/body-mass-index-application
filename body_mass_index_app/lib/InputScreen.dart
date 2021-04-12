import 'package:body_mass_index_app/resultScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resultScreen.dart';
import 'calResult.dart';

const activeColor = Color(0XFF1D2333);
const inactiveColor = Color(0xFF111328);

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Color maleColor = inactiveColor;
  Color femaleColor = inactiveColor;

  int height = 180;
  int weight = 30;
  int age = 21;

  void updateColor(int gender) {
    if (gender == 1) {
      maleColor = activeColor;
      femaleColor = inactiveColor;
    }
    if (gender == 2) {
      femaleColor = activeColor;
      maleColor = inactiveColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculate Your BMI",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              FontAwesomeIcons.male,
                              size: 75,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            "MALE",
                            style:
                                TextStyle(color: Colors.white, fontSize: 28.0),
                          )
                        ],
                      ),
                      height: 180.0,
                      width: 180.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: maleColor,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              FontAwesomeIcons.female,
                              size: 75,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            "FEMALE",
                            style:
                                TextStyle(color: Colors.white, fontSize: 29.0),
                          )
                        ],
                      ),
                      height: 180.0,
                      width: 180.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: femaleColor,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 35.0),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ],
                  ),
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x291DE986),
                        inactiveTrackColor: Colors.grey,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 16.0,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30.0,
                        ),
                        thumbColor: Color(0xFF1DE986),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 100,
                          max: 250.0,
                          onChanged: (double v) {
                            setState(() {
                              height = v.round();
                            });
                          })),
                ],
              ),
              height: 180,
              width: 390.0,
              decoration: BoxDecoration(
                color: inactiveColor,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              weight.toString(),
                              style: TextStyle(
                                  color: Colors.white, fontSize: 35.0),
                            ),
                            Text(
                              'Kg',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              maxRadius: 25.0,
                              child: IconButton(
                                icon: Icon(Icons.remove),
                                color: Colors.grey,
                                iconSize: 25.0,
                                splashColor: Colors.greenAccent,
                                onPressed: () {
                                  setState(() {
                                    if (weight > 10) {
                                      weight--;
                                    }
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            CircleAvatar(
                              maxRadius: 25.0,
                              child: IconButton(
                                icon: Icon(Icons.add),
                                color: Colors.grey,
                                iconSize: 25.0,
                                splashColor: Colors.greenAccent,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    height: 180.0,
                    width: 180.0,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: inactiveColor,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              age.toString(),
                              style: TextStyle(
                                  color: Colors.white, fontSize: 35.0),
                            ),
                            Text(
                              'Years',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              maxRadius: 25.0,
                              child: IconButton(
                                icon: Icon(Icons.remove),
                                color: Colors.grey,
                                iconSize: 25.0,
                                splashColor: Colors.greenAccent,
                                onPressed: () {
                                  setState(() {
                                    if (age > 10) {
                                      age--;
                                    }
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            CircleAvatar(
                              maxRadius: 25.0,
                              child: IconButton(
                                icon: Icon(Icons.add),
                                color: Colors.grey,
                                iconSize: 25.0,
                                splashColor: Colors.greenAccent,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    height: 180.0,
                    width: 180.0,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: inactiveColor,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                NavigateToResultScreen(100);
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Calculate Result!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0),
                  ),
                ),
                height: 100.0,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                color: Colors.greenAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void NavigateToResultScreen(double result) {
    CalculateResult obj = CalculateResult(weight, height);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResultScreen(
                obj.calculateResult(),
                obj.msg,
                obj.getDiscription(),


         ),
       ),
    );
  }
}
