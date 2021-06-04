import 'dart:math';

import 'package:flutter/material.dart';
import 'package:themetesting/constants/Theme.dart';
import 'progresIndicator.dart';

class ProfileCard extends StatelessWidget {
  final cardHeight;
  final cardWidth;
  final name;
  final cardDescription;
  final cardColor;
  ProfileCard(
      {this.cardHeight,
      this.cardWidth,
      this.name,
      this.cardDescription,
      this.cardColor});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth * 1.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: cardColor,
          shadowColor: Colors.black,
          elevation: 20,
          semanticContainer: true,
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FractionalTranslation(
                  translation: Offset(0.0, -0.5),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/dp.jpg"),
                    radius: 80.0,
                  ),
                ),
                Text(cardDescription,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey)),
                Text(name,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  final cardHeight;
  final cardWidth;
  final cardTitle;
  final imageTitle;
  final cardDescription;
  final cardColor;
  final String blogImage;
  BlogCard(
      {this.cardHeight,
      this.cardWidth,
      this.cardDescription,
      this.cardTitle,
      this.imageTitle,
      this.cardColor, required this.blogImage});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      width: deviceWidth * 1.0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 20,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                FractionalTranslation(
                    translation: Offset(0.0, -0.3),
                    child: Container(
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.grey[200],
                        elevation: 20,
                        shadowColor: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: deviceHeight * 0.3,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(blogImage),
                                  fit: BoxFit.fill,
                                  alignment: Alignment.center,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 180, 0, 0),
                                child: Text(
                                  imageTitle,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                Text(
                  cardTitle,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(cardDescription)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MultiColorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          shadowColor: Colors.black,
          clipBehavior: Clip.antiAlias,
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [WishColors.lightBlue, WishColors.darkBlue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Container(
                  alignment: Alignment.center,
                  height: deviceHeight * 0.2,
                  child: InkWell(
                    onTap: () {},
                    child: Text("some text",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ))),
        ),
      ),
    );
  }
}

class FullBackgroundCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.grey[200],
          elevation: 20,
          shadowColor: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: deviceHeight * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bg2.jpg"),
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                  ),
                ),
                child: Center(
                  child: Text("Full Backgroung Card",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FlipCard extends StatefulWidget {
  const FlipCard({Key? key}) : super(key: key);

  @override
  _FlipCardState createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> {
  //declare the isBack bool
  bool isBack = true;
  double angle = 0;

  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Now we will start making our Card
          //the principe is basic
          //we will create a container that will display the back face or the front face
          // and we will wrap it in a Transform widget
          //then we will make a tween animation for animating our card
          //now let's wrap our tween animation inside a gesture detector

          GestureDetector(
            onTap: _flip,
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: angle),
                duration: Duration(milliseconds: 500),
                builder: (BuildContext context, double val, __) {
                  //here we will change the isBack val so we can change the content of the card
                  if (val >= (pi / 2)) {
                    isBack = false;
                  } else {
                    isBack = true;
                  }
                  return (Transform(
                    //let's make the card flip by it's center
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(val),
                    child: Container(
                        child: isBack
                            ? Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    color: Colors.grey[200],
                                    elevation: 20,
                                    shadowColor: Colors.black,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          height: deviceHeight * 0.3,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image:
                                                  AssetImage("assets/bg3.jpg"),
                                              fit: BoxFit.fill,
                                              alignment: Alignment.center,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text("Click Me ",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ) //if it's back we will display here
                            : Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.identity()
                                  ..rotateY(
                                      pi), // it will flip horizontally the container
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      color: Colors.grey[200],
                                      elevation: 20,
                                      shadowColor: Colors.black,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Container(
                                            height: deviceHeight * 0.3,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/bg.jpg"),
                                                fit: BoxFit.fill,
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                            child: Center(
                                              child: Progresindicator()
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )) //else we will display it here,
                        ),
                  ));
                }),
          )
        ],
      ),
    );
  }
}
