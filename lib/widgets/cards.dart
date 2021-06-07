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
  final String image;
  ProfileCard(
      {this.cardHeight,
      this.cardWidth,
      this.name,
      this.cardDescription,
      this.cardColor,
      required this.image});

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
                    backgroundImage: AssetImage(image),
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
      this.cardColor,
      required this.blogImage});

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

class BGInfoCard extends StatelessWidget {
  final beginningAlignment;
  final endingAlignment;
  final cardHeight;
  final cardWidth;
  final color1;
  final color2;
  final tileMode;
  final Widget child;

  BGInfoCard(
      {this.beginningAlignment,
      this.endingAlignment,
      this.color1,
      this.color2,
      this.tileMode,
      this.cardHeight,
      this.cardWidth,
      required this.child});

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
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [color1, color2],
                  tileMode: tileMode,
                  begin: beginningAlignment,
                  end: endingAlignment,
                ),
              ),
              child: Container(
                  alignment: Alignment.center,
                  height: cardHeight,
                  child: InkWell(onTap: () {}, child: child))),
        ),
      ),
    );
  }
}

class BGInfoCardPrimary extends StatelessWidget {
  final title;
  final subtitle;
  final description;
  BGInfoCardPrimary({this.title, this.subtitle, this.description});

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
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(180, 100, 195, 1.0),
                    Color.fromRGBO(110, 55, 145, 1.0)
                  ],
                  // tileMode: tileMode,
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text(subtitle,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      Text(description,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12))
                    ],
                  ))),
        ),
      ),
    );
  }
}

class BGInfoCardDanger extends StatelessWidget {
  final title;
  final subtitle;
  final description;
  BGInfoCardDanger({this.title, this.subtitle, this.description});

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
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(245, 90, 85, 1.0),
                    Color.fromRGBO(190, 35, 30, 1.0)
                  ],
                  // tileMode: tileMode,
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text(subtitle,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      Text(description,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12))
                    ],
                  ))),
        ),
      ),
    );
  }
}

class BGInfoCardSucces extends StatelessWidget {
  final title;
  final subtitle;
  final description;
  BGInfoCardSucces({this.title, this.subtitle, this.description});

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
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(130, 235, 40, 1.0),
                    Color.fromRGBO(60, 125, 70, 1.0)
                  ],
                  // tileMode: tileMode,
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text(subtitle,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      Text(description,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12))
                    ],
                  ))),
        ),
      ),
    );
  }
}

class BGInfoCardWarning extends StatelessWidget {
  final title;
  final subtitle;
  final description;
  BGInfoCardWarning({this.title, this.subtitle, this.description});

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
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(250, 130, 60, 1.0),
                    Color.fromRGBO(235, 80, 70, 1.0)
                  ],
                  // tileMode: tileMode,
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(title,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text(subtitle,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                      Text(description,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12))
                    ],
                  ))),
        ),
      ),
    );
  }
}

class FullBackgroundCard extends StatelessWidget {
  final String backgroundImage;
  final cardHeight;
  const FullBackgroundCard(
      {Key? key, required this.backgroundImage, this.cardHeight});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
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
              height: cardHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(backgroundImage),
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
                                                image:
                                                    AssetImage("assets/bg.jpg"),
                                                fit: BoxFit.fill,
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                            child: Center(
                                                child: Progresindicator()),
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
