import 'package:flutter/material.dart';
import 'package:themetesting/constants/Theme.dart';


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
