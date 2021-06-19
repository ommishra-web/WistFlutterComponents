import 'dart:html';

import 'buttons.dart';
import 'dart:math';
import 'package:flutter/material.dart';
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

class BGInfoCardPrimary extends StatelessWidget {
  final title;
  final subtitle;
  final description;
  BGInfoCardPrimary({this.title, this.subtitle, this.description});

  @override
  Widget build(BuildContext context) {
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
                      Color.fromRGBO(140, 240, 40, 1.0),
                      Color.fromRGBO(110, 215, 20, 1.0)
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
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("Scrum Total",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("Profile Page",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ),
                          ),
                          Expanded(
                              child: Container(
                                  alignment: Alignment.center,
                                  child: DRPDown()))
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("26/08/2021",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: IconButton(
                                  icon: Icon(Icons.archive_sharp),
                                  onPressed: () {},
                                )),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("Me, Anil(+2)",
                                  style: TextStyle(
                                    fontSize: 16,
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: IconButton(
                                  icon: Icon(Icons.share_sharp),
                                  onPressed: () {},
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}

class BGInfoCardWarning extends StatelessWidget {
  final title;
  final subtitle;
  final description;
  BGInfoCardWarning({this.title, this.subtitle, this.description});

  @override
  Widget build(BuildContext context) {
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
                                                child: Progresindicator(
                                              percent: 5.0,
                                            )),
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

class NavTabCardPrimary extends StatefulWidget {
  @override
  _NavTabState createState() => _NavTabState();
}

class _NavTabState extends State<NavTabCardPrimary> {
  int _currentIndex = 0;
  final tabs = [
    Center(
      child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    ),
    Center(
      child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    ),
    Center(
      child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    ),
    // Center(
    //  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    // )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: Container(
          child: Card(
            elevation: 20,
            child: Column(
              children: [
                FractionalTranslation(
                  translation: Offset(0.0, -0.3),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Container(
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
                      child: BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        selectedItemColor: Colors.white,
                        unselectedItemColor: Colors.white70,
                        backgroundColor: Colors.transparent,
                        currentIndex: _currentIndex,
                        items: [
                          BottomNavigationBarItem(
                            // ignore: deprecated_member_use
                            title: Text("About"),
                            icon: Icon(Icons.analytics_outlined),
                          ),
                          BottomNavigationBarItem(
                            // ignore: deprecated_member_use
                            title: Text("History"),
                            icon: Icon(Icons.history_toggle_off_outlined),
                          ),
                          BottomNavigationBarItem(
                            // ignore: deprecated_member_use
                            title: Text("Track"),
                            icon: Icon(Icons.track_changes),
                          ),
                          // BottomNavigationBarItem(
                          //   // ignore: deprecated_member_use
                          //   title: Text("Advance"),
                          //   icon: Icon(Icons.more_outlined),
                          // ),
                        ],
                        onTap: (index) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  child: tabs[_currentIndex],
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
