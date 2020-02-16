import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageButton extends StatelessWidget {
  final Widget route;
  final String pageName;
  final double leftPadding;
  final double topPadding;

  PageButton({
    @required this.route,
    @required this.pageName,
    @required this.leftPadding,
    @required this.topPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
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
              color: Colors.black,
            ),
          ),
          color: Colors.white,
          hoverElevation: 10,
          hoverColor: Color.fromRGBO(220, 220, 220, 1),
        ),
      ),
    );
  }
}
