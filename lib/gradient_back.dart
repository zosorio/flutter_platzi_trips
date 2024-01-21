import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  String title = "Popular";

  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3), //lighter tone
            Color(0xFF584CD1) //darker tone
          ],
          begin: FractionalOffset(0.2, 0.0), //orientation
          end: FractionalOffset(1.0, 0.6), //gradients
          stops: [0.0, 0.6], //orientation
            tileMode: TileMode.clamp //background color if gradient fails
        )
      ),

      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),

      alignment: Alignment(-0.9, -0.6),
    );

  }


}