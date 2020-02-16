import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// Page only widgets
import './widgets/logo.dart';
import './widgets/pageButton.dart';

// Global App widgets
import './../languages/languages.dart';
import './../projects/projects.dart';
import './../aboutMe/aboutMe.dart';
import './../../widgets/animations.dart';
import './../../widgets/socialMedia.dart';
import './../../widgets/appbarTitle.dart';

class HomePage extends StatelessWidget {
  final Widget baseMobileWidget = Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: 75,
            bottom: 50,
          ),
          child: Logo(),
        ),
        FadeIn(
          delay: 3,
          start: 130,
          stop: 0,
          duration: Duration(milliseconds: 700),
          child: PageButton(
            route: AboutMe(),
            pageName: "About Me",
            leftPadding: 0,
            topPadding: 0,
          ),
        ),
        FadeIn(
          delay: 3,
          start: -130,
          stop: 0,
          duration: Duration(milliseconds: 700),
          child: PageButton(
            route: Projects(),
            pageName: "Projects",
            leftPadding: 0,
            topPadding: 10,
          ),
        ),
        FadeIn(
          delay: 3,
          start: 130,
          stop: 0,
          duration: Duration(milliseconds: 700),
          child: PageButton(
            route: Languages(),
            pageName: "Languages",
            leftPadding: 0,
            topPadding: 10,
          ),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Leading Icon to prevent automatic one, not visible
        leading: IconButton(
          icon: Icon(
            Icons.account_box,
            color: Colors.black,
          ),
          onPressed: null,
        ),
        title: FadeIn(
          duration: Duration(milliseconds: 700),
          stop: 0,
          start: -130,
          delay: 3,
          child: AppBarTitle(
            endText: "",
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 10.0,
        actions: <Widget>[
          SocialMediaIcon(
              MdiIcons.twitter, "https://twitter.com/GleichMatthew"),
          SocialMediaIcon(MdiIcons.instagram,
              "https://www.instagram.com/gleichphotography/"),
          SocialMediaIcon(MdiIcons.linkedinBox,
              "https://www.linkedin.com/in/matthew-gleich-636618178/"),
          SocialMediaIcon(
              MdiIcons.githubCircle, "https://github.com/Matt-Gleich"),
          SocialMediaIcon(
              MdiIcons.docker, "https://hub.docker.com/u/mattgleich"),
          SocialMediaIcon(
              MdiIcons.strava, "https://www.strava.com/athletes/30124266"),
        ],
      ),
      body: MediaQuery.of(context).size.width < 1212
          ? MediaQuery.of(context).size.height < 1058
              ? SingleChildScrollView(
                  child: baseMobileWidget,
                )
              : baseMobileWidget
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Logo(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FadeIn(
                      delay: 3,
                      start: 130,
                      stop: 0,
                      duration: Duration(milliseconds: 700),
                      child: PageButton(
                          route: AboutMe(),
                          pageName: "About Me",
                          leftPadding: 0,
                          topPadding: 0),
                    ),
                    FadeIn(
                      delay: 3.3,
                      start: 130,
                      stop: 0,
                      duration: Duration(milliseconds: 700),
                      child: PageButton(
                        route: Projects(),
                        pageName: "Projects",
                        leftPadding: 100,
                        topPadding: 30,
                      ),
                    ),
                    FadeIn(
                      delay: 3.6,
                      start: 130,
                      stop: 0,
                      duration: Duration(milliseconds: 700),
                      child: PageButton(
                        route: Languages(),
                        pageName: "Languages",
                        leftPadding: 0,
                        topPadding: 30,
                      ),
                    ),
                  ],
                )
              ],
            ),
    );
  }
}
