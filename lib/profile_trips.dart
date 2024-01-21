import 'package:flutter/material.dart';
import 'profile_header.dart';
import 'profile_places_list.dart';
import 'profile_background.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[
            ProfileHeader(),
            ProfilePlacesList()
          ],
        ),
      ],
    );
  }

}
