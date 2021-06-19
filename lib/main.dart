import 'package:flutter/material.dart';
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
      theme: ThemeData(),
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
              CircularButton(
                  radius: 20.0,
                  onPressed: () {
                    DialogHelper.add(context);
                  }),
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
              BGInfoCardSucces(),
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
              NavTabCardPrimary(),
              TGBtn()
            ],
          ),
        ),
      ),
    );
  }
}

// void addNewTask(BuildContext context) {
//   var alertDialog = AlertDialog(
//     title: Text("HEllO"),
//     contentPadding: EdgeInsets.all(10),
//     content: Column(children: [
//       TextField()
//     ],),
//   );

//   showDialog(context: context, builder: (BuildContext context){

//   return alertDialog;

//   });
// }

class AddNewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Content(),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.white),
        height: deviceHeight * 0.7,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: ("Title")),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(hintText: ("Description")),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(hintText: ("Date")),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(hintText: ("Priority")),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(hintText: ("Estimated Hours")),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(hintText: ("Actual Hours")),
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Assign To Project',
                          ))),
                  TextButton(child: Text('Cancel'), onPressed: () {})
                ],
              ),

                            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  TextButton(child: Text('Add'), onPressed: () {})
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DialogHelper {
  static add(context) =>
      showDialog(context: context, builder: (context) => AddNewTask());
}
