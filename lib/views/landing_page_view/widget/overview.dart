import 'package:finance_mobile_application/config/config.dart';
import 'package:finance_mobile_application/utils/utils.dart';
import 'package:finance_mobile_application/utils/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class Overview extends StatelessWidget {
  Overview({Key? key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: size.width * 0.05, top: size.width * 0.1, right: size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Overview",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold, color: Pallete().purple),
              ),
              Icon(
                Icons.notifications_active_outlined,
                color: Pallete().purple,
              ),
              horizontalSpacer(size.width * 0.2),
              Text(
                "Oct 19,2023",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold, color: Pallete().purple),
              ),
            ],
          ),
          verticalSpacer(size.height * 0.01),
          CustomCard(
              content: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomCard(
                      content: Icon(
                        Icons.arrow_upward,
                        size: size.height * 0.05,
                      ),
                      width: size.height * 0.07,
                      color: Pallete().blackishWhite,
                    ),
                  ),
                  Container(
                      width: size.width * 0.5,
                      child: ListTile(
                        title: Text('Sent Payment', style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(maxLines: 2, 'Sendinf payment to clients'),
                      )),
                  Text('INR 200', style: TextStyle(color: Pallete().purple)),
                ],
              ),
              width: size.width * 0.9),
          verticalSpacer(size.height * 0.01),
          CustomCard(
              content: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomCard(
                      content: Icon(
                        Icons.arrow_downward,
                        size: size.height * 0.05,
                      ),
                      width: size.height * 0.07,
                      color: Pallete().blackishWhite,
                    ),
                  ),
                  Container(
                      width: size.width * 0.5,
                      child: ListTile(
                        title: Text(
                          'Recieve Payment',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(maxLines: 2, 'Recieving salary from company'),
                      )),
                  Text('INR 2000',
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: TextStyle(color: Pallete().purple)),
                ],
              ),
              width: size.width * 0.9),
          verticalSpacer(size.height * 0.01),
          CustomCard(
              content: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomCard(
                      content: Icon(
                        Icons.monetization_on_outlined,
                        size: size.height * 0.05,
                      ),
                      width: size.height * 0.07,
                      color: Pallete().blackishWhite,
                    ),
                  ),
                  Container(
                      width: size.width * 0.5,
                      child: ListTile(
                        title: Text(
                          'Loan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(maxLines: 2, 'Loan for a car'),
                      )),
                  Text('INR 20',
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: TextStyle(color: Pallete().purple)),
                ],

              ),
              width: size.width * 0.9),
          verticalSpacer(size.height*0.2),
        ],
      ),
    );
  }
}
