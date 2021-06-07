import 'package:flutter/material.dart';
import 'package:themetesting/constants/Theme.dart';
import 'widgets/cards.dart';
import 'widgets/buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Center(
                  child: Text(
                "Custom Reusable Widgets",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
              SizedBox(
                height: 10,
              ),
              Text('You have pushed the button this many times:'),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              DefaultButton(
                onPressed: _incrementCounter,
              ),
              CircularButton(radius: 20.0, onPressed: _incrementCounter),
              IconicButton(
                size: 10.0,
              ),
              SizedBox(height: 100),
              ProfileCard(
                name: "Hariom Mishra",
                cardDescription: "Ceo/Founder",
                cardColor: Colors.white,
                image: "assets/dp.jpg",
              ),
              SizedBox(height: 50),
              BlogCard(
                cardTitle: "BlogCard",
                imageTitle: "TITLE",
                cardDescription:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                blogImage: 'assets/bg3.jpg',
              ),
              SizedBox(height: 50),
              BGInfoCard(
                  beginningAlignment: Alignment.center,
                  endingAlignment: Alignment.bottomRight,
                  color1: WishColors.primary,
                  color2: WishColors.white,
                  tileMode: TileMode.clamp,
                  cardHeight: deviceHeight * 0.2,
                  child: Text("hii")),
              BGInfoCard(
                  beginningAlignment: Alignment.center,
                  endingAlignment: Alignment.centerRight,
                  color1: Colors.greenAccent,
                  color2: WishColors.white,
                  tileMode: TileMode.clamp,
                  cardHeight: deviceHeight * 0.2,
                  child: Text("hii")),
              BGInfoCard(
                  beginningAlignment: Alignment.center,
                  endingAlignment: Alignment.centerRight,
                  color1: Colors.greenAccent,
                  color2: WishColors.black,
                  tileMode: TileMode.clamp,
                  cardHeight: deviceHeight * 0.2,
                  child: Text("hii")),
              BGInfoCard(
                  beginningAlignment: Alignment.center,
                  endingAlignment: Alignment.bottomRight,
                  color1: Colors.redAccent,
                  color2: WishColors.black,
                  tileMode: TileMode.mirror,
                  cardHeight: deviceHeight * 0.2,
                  child: Text("hii")),
              BGInfoCard(
                  beginningAlignment: Alignment.center,
                  endingAlignment: Alignment.bottomRight,
                  color1: Colors.cyanAccent,
                  color2: WishColors.black,
                  tileMode: TileMode.mirror,
                  cardHeight: deviceHeight * 0.2,
                  child: Text("hii")),
              BGInfoCard(
                  beginningAlignment: Alignment.center,
                  endingAlignment: Alignment.bottomRight,
                  color1: Colors.limeAccent,
                  color2: WishColors.black,
                  tileMode: TileMode.mirror,
                  cardHeight: deviceHeight * 0.2,
                  child: Text("hii")),
              BGInfoCardPrimary(
              title: "Title",
                subtitle: "Subtitle",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              ),
              BGInfoCardDanger(
                title: "Title",
                subtitle: "Subtitle",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              ),
              BGInfoCardSucces(
                title: "Title",
                subtitle: "Subtitle",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              ),
              BGInfoCardWarning(
                title: "Title",
                subtitle: "Subtitle",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              ),
              SizedBox(height: 50),
              FullBackgroundCard(
                backgroundImage: "assets/bg2.jpg",
                cardHeight: deviceHeight * 0.2,
              ),
              SizedBox(height: 50),
              FlipCard(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
