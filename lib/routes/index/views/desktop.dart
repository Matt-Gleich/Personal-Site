import 'package:flutter/material.dart';

import 'package:matt_gleich_github_io/widgets/actionBar.dart';
import 'package:matt_gleich_github_io/routes/index/widgets/buttons.dart';
import 'package:matt_gleich_github_io/routes/index/widgets/text.dart';

class IndexDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Header(),
                const Text(
                  "Matthew Gleich",
                  style: TextStyle(
                    fontSize: 150,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SubTitle(),
                ActionBar(),
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: PageButtons.buttons,
          )
        ],
      ),
    );
  }
}
