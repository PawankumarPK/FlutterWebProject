import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

  List<Widget> pageChildren() {
    return <Widget>[
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Website \nDeveloper", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white
            ),),
            Text(
              "We have taken each and every project handed over to us a challenge, "
                  "which has helped us achieve a high project success rate.",
              style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white
              ),)
          ],
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren(),
        );
      } else {
        return Column(
            children: pageChildren()
        );
      }
    });
  }
}
