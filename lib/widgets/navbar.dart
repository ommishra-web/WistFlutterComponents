import 'package:flutter/material.dart';


class NavTab extends StatefulWidget {
  @override
  _NavTabState createState() => _NavTabState();
}

class _NavTabState extends State<NavTab> {
  int _currentIndex = 0;
  final tabs = [
    Center(
     child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    ),
    Center(
     child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    ),
    Center(
     child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    ),
    // Center(
    //  child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    // )
  ];

  @override
  Widget build(BuildContext context) {
    return 
      SingleChildScrollView(
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
                  Container(child: tabs[_currentIndex], margin: EdgeInsets.all(12),alignment: 
                  Alignment.center,)
                ],
              ),
            ),
          ),
        ),
      );
    
  }
}
