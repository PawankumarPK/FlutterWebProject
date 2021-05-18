import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavbar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopNavbar();
      } else {
        return MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            "Agami Sports",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
          ),
          Row(
            children: <Widget>[
              Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "About Us",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Portfolio",
                style: TextStyle(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
