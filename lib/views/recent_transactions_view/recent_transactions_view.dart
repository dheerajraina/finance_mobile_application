import 'package:finance_mobile_application/config/config.dart';
import 'package:finance_mobile_application/utils/spacers.dart';
import 'package:finance_mobile_application/utils/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RecentTransactionsView extends StatelessWidget {
  RecentTransactionsView({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.05, top: size.width * 0.1, right: size.width * 0.05),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                    onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_ios)),
                verticalSpacer(size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Transactions",
                      style: Theme.of(context).textTheme.headline5!.copyWith(color: Pallete().purple),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color: Pallete().purple),
                    )
                  ],
                ),
                verticalSpacer(20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Button(
                        borderRadius: 20,
                        width: size.height * 0.1,
                        height: size.height * 0.04,
                        color: Pallete().purple,
                        text: 'All',
                        buttonFont: size.height * 0.02,
                        onPressed: () {}),
                    Button(
                        borderRadius: 20,
                        width: size.height * 0.1,
                        height: size.height * 0.04,
                        color: Pallete().purple,
                        text: 'Income',
                        buttonFont: size.height * 0.02,
                        onPressed: () {}),
                    Button(
                        borderRadius: 20,
                        width: size.height * 0.1,
                        height: size.height * 0.04,
                        color: Pallete().purple,
                        text: 'Expense',
                        buttonFont: size.height * 0.02,
                        onPressed: () {})
                  ],
                ),
                verticalSpacer(30.0),
                Text(
                  "Today",
                  style: Theme.of(context).textTheme.headline6!.copyWith(color: Pallete().purple),
                ),
                CustomCard(
                    content: Row(
                      children: [
                        Icon(
                          Icons.mail_outline,
                          size: size.height * 0.05,
                          color: Pallete().purple,
                        ),
                        Container(
                            width: size.width * 0.5,
                            child: ListTile(
                              title: Text('Payment', style: TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: Text(maxLines: 2, 'Payment from Andrea'),
                            )),
                        Text(
                          'INR 200',
                          style: TextStyle(color: Pallete().purple),
                        ),
                      ],
                    ),
                    width: size.width * 0.9),
                verticalSpacer(size.height*0.1),
                Center(
                  child: Container(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: size.height * 0.35,
                          height: size.height * 0.35,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Pallete().grey),
                              borderRadius: BorderRadius.circular(size.height * 0.2)),
                        ),
                        Positioned(
                            bottom: 30,
                            top: 30,
                            left: 30,
                            right: 30,
                            child: Stack(
                              children: [
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: size.height * 0.30,
                                    maxHeight: size.height * 0.30,
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 15, color: Pallete().blackishWhite),
                                      borderRadius: BorderRadius.circular(size.height * 0.2)),
                                ),
                                Positioned(
                                    bottom: 40,
                                    top: 40,
                                    left: 40,
                                    right: 40,
                                    child: Stack(
                                      children: [
                                        Container(
                                          constraints: BoxConstraints(
                                            maxWidth: size.height * 0.30,
                                            maxHeight: size.height * 0.30,
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border.all(width: 5, color: Pallete().purple),
                                              borderRadius:
                                                  BorderRadius.circular(size.height * 0.2)),
                                        ),
                                        Positioned(
                                            bottom: 20,
                                            top: 20,
                                            left: 20,
                                            right: 20,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth: size.height * 0.30,
                                                    maxHeight: size.height * 0.30,
                                                  ),
                                                  decoration: BoxDecoration(
                                                      // border: Border.all(width: 15, color: Pallete().blackishWhite),
                                                      borderRadius:
                                                          BorderRadius.circular(size.height * 0.2)),
                                                  child: CircleAvatar(
                                                      radius: size.height * 0.1,
                                                      foregroundImage: NetworkImage(
                                                          "https://www.wikihow.com/images/thumb/5/56/Draw-a-Cute-Cartoon-Person-Step-8.jpg/v4-460px-Draw-a-Cute-Cartoon-Person-Step-8.jpg.webp")),
                                                ),
                                              ],
                                            )),
                                      ],
                                    )),
                              ],
                            )),
                        outerPhotos(
                            "https://i.pinimg.com/736x/f8/2f/ba/f82fbac7514f944aacc0257445c1f89e.jpg",
                            top: 60.0,
                            left: -10.0),
                        outerPhotos(
                            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80",
                            top: 60.0,
                            right: -10.0),
                        outerPhotos(
                            "https://www.harleytherapy.co.uk/counselling/wp-content/uploads/16297800391_5c6e812832.jpg",
                            top: -30.0,
                            right: 100.0),
                        outerPhotos(
                            "https://www.harleytherapy.co.uk/counselling/wp-content/uploads/16297800391_5c6e812832.jpg",
                            bottom: -5.0,
                            left: 30.0),
                        outerPhotos(
                            "https://www.harleytherapy.co.uk/counselling/wp-content/uploads/16297800391_5c6e812832.jpg",
                            bottom: -5.0,
                            right: 30.0)
                      ],
                    ),
                  ),
                ),
                 verticalSpacer(40.0),
                Center(
                  child: Button(
                      borderRadius: size.height * 0.1,
                      width: size.height * 0.4,
                      height: size.height * 0.06,
                      color: Pallete().purple,
                      text: 'See Details',
                      buttonFont: size.height*0.02,
                      onPressed: () {}),
                ),

               verticalSpacer(30.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget outerPhotos(String img, {var top, var bottom, var left, var right}) {
    return Positioned(
        top: top,
        left: left,
        right: right,
        bottom: bottom,
        child: Stack(
          children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: size.height * 0.30,
                maxHeight: size.height * 0.30,
              ),
              decoration: BoxDecoration(
                  // border: Border.all(width: 15, color: Pallete().blackishWhite),
                  borderRadius: BorderRadius.circular(size.height * 0.2)),
              child: CircleAvatar(radius: size.height * 0.04, foregroundImage: NetworkImage(img)),
            ),
          ],
        ));
  }
}
