import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageButton extends StatelessWidget {
  final Widget route;
  final String pageName;
  final double leftPadding;
  final double topPadding;
  final double rightPadding;

  PageButton({
    @required this.route,
    @required this.pageName,
    @required this.leftPadding,
    @required this.topPadding,
    @required this.rightPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: rightPadding,
        left: leftPadding,
        top: topPadding,
      ),
      child: ButtonTheme(
        height: 100,
        minWidth: 200,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => route),
            );
          },
          child: Text(
            pageName,
            style: GoogleFonts.abel(
              fontSize: 40,
              color: Color.fromRGBO(144, 36, 27, 1),
            ),
          ),
          color: Colors.black,
          hoverElevation: 10,
          hoverColor: Colors.white,
          splashColor: Color.fromRGBO(144, 36, 27, 1),
        ),
      ),
    );
  }
}
