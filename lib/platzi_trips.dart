import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class PlatziTrips extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
  
}

class _PlatziTrips extends State<PlatziTrips> {

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    //de 0 a 0-1 -> N-1
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple //colores iconos
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
            items: [
              //Tabs del bottonNavigation
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: ""
              ),
            ]
        ),
      ),
    );
  }
  
}