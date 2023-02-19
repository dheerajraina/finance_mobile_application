import 'package:finance_mobile_application/config/config.dart';
import 'package:finance_mobile_application/utils/utils.dart';
import 'package:finance_mobile_application/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ProfileHighlights extends StatelessWidget {
  ProfileHighlights({super.key, required this.size, required this.routeTo});
  final Size size;
  final Widget routeTo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: size.width * 0.05, top: size.width * 0.1, right: size.width * 0.05),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => routeTo));
        },
        child: CustomCard(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RotatedBox(quarterTurns: 2, child: Icon(Icons.horizontal_rule)),
                    RotatedBox(quarterTurns: 1, child: Icon(Icons.more_horiz))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        radius: size.height * 0.1,
                        backgroundImage: NetworkImage(
                          'https://www.wikihow.com/images/thumb/5/56/Draw-a-Cute-Cartoon-Person-Step-8.jpg/v4-460px-Draw-a-Cute-Cartoon-Person-Step-8.jpg.webp',
                        )),
                  ],
                ),
                verticalSpacer(size.height * 0.05),
                Center(
                    child: Text(
                  "Anime Girl",
                  style: Theme.of(context).textTheme.headline6!.copyWith(color: Pallete().purple),
                )),
                Center(
                    child: Text(
                  "Designer",
                  style: Theme.of(context).textTheme.bodyLarge,
                )),
                verticalSpacer(size.height * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    highLights(context, size, 'Income', 'INR 50000'),
                    Container(width: 1, height: size.height * 0.1, color: Pallete().grey),
                    highLights(context, size, 'Expenses', 'INR 32'),
                    Container(width: 1, height: size.height * 0.1, color: Pallete().grey),
                    highLights(context, size, 'Loan', 'INR 0')
                  ],
                )
              ],
            ),
            width: size.width * 0.9),
      ),
    );
  }

  Widget highLights(BuildContext context, size, name, value) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        verticalSpacer(10.0),
        Text(
          name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
