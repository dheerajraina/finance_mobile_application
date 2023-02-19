import 'package:finance_mobile_application/config/config.dart';
import 'package:finance_mobile_application/utils/utils.dart';
import 'package:finance_mobile_application/utils/widgets/widgets.dart';
import 'package:finance_mobile_application/views/landing_page_view/widget/overview.dart';
import 'package:finance_mobile_application/views/landing_page_view/widget/profile_highlights.dart';
import 'package:flutter/material.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            ProfileHighlights(size: size),
            verticalSpacer(size.height * 0.05),
            Overview(
              size: size,
            )
          ]),
        ),
        bottomNavigationBar: Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Icon(
              Icons.home_outlined,
              size: size.height * 0.05,
            ),
            Icon(
              Icons.credit_card_outlined,
              size: size.height * 0.05,
            ),
            Button(
                borderRadius: 10.0,
                width: size.height * 0.04,
                height: size.height * 0.04,
                color: Pallete().black,
                text: '+',
                onPressed: () {}),
            Text(
              'S',
              style: TextStyle(fontSize: size.height * 0.04),
            ),
            Icon(
              Icons.person_outlined,
              size: size.height * 0.05,
            ),
          ]),
        ),
      ),
    );
  }
}
