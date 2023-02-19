import 'package:finance_mobile_application/utils/utils.dart';
import 'package:finance_mobile_application/views/home_page_view/widgets/logo.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  HomePageView({
    super.key,
  });

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            verticalSpacer(screenHeight * 0.1),
            Logo(
              radius: screenHeight * 0.08,
              image: "https://akm-img-a-in.tosshub.com/sites/visualstory/stories/2022_11/story_12413/assets/14.jpeg?time=1667304495",
            )
          ],
        ),
      ),
    );
  }
}
