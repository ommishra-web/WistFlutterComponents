import 'dart:html';

import 'package:flutter/material.dart';
import 'package:themetesting/constants/Theme.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
class DefaultButton extends StatelessWidget {
  DefaultButton({required this.onPressed});
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return RaisedButton(
      onPressed: onPressed,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child:
            Text("Default Button", style: TextStyle(color: WishColors.white)),
      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  final radius;

  CircularButton({required this.onPressed, this.radius});
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return RaisedButton(
      onPressed: onPressed,
      color: Colors.purpleAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child:
            Text("Circular Button", style: TextStyle(color: WishColors.white)),
      ),
    );
  }
}

class IconicButton extends StatelessWidget {
  final size;
  IconicButton({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Card(
            color: Colors.purpleAccent,
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.anchor,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )),
              ],
            )),
      ),
    );
  }
}

class TGBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //By default
            LiteRollingSwitch(
              value: false,
              onChanged: (bool state) {
                print('turned ${(state) ? 'on' : 'off'}');
              },
            ),

            //Customized
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: LiteRollingSwitch(
                value: true,
                textOn: 'active',
                textOff: 'inactive',
                colorOn: Colors.deepOrange,
                colorOff: Colors.blueGrey,
                iconOn: Icons.lightbulb_outline,
                iconOff: Icons.power_settings_new,
                onChanged: (bool state) {
                  print('turned ${(state) ? 'on' : 'off'}');
                },
              ),
            )
          ],
        ),);
  }
}


class DRPDown extends StatefulWidget {
  const DRPDown({Key? key}) : super(key: key);

  @override
  State<DRPDown> createState() => _DRPDown();
}

/// This is the private State class that goes with MyStatefulWidget.
class _DRPDown extends State<DRPDown> {
  String dropdownValue = '0';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      // icon: const Icon(Icons.ac_unit),
      // iconSize: 24,
      // elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        // height: 2,
        // color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['0' ,'10', '20', '30', '40', '50', "60", "70", "80", "90", "100"]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row(children: [Text(value),Text("% Completed")],),
        );
      }).toList(),
    );
  }
}
