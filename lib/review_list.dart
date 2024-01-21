import 'package:flutter/material.dart';
import 'package:flutter_platzi_app/review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/people.jpeg", "Varuna Yasas", "1 review - 5 Photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/people.jpeg", "Anahí Salgado", "2 review - 5 Photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/people.jpeg", "Gissele Thomas", "3 review - 2 Photos", "There is an amazing place in Sri Lanka"),
      ],
    );
  }

}