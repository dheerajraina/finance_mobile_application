import 'dart:developer';

import 'package:finance_mobile_application/config/pallete.dart';
import 'package:finance_mobile_application/utils/utils.dart';
import 'package:finance_mobile_application/utils/widgets/custom_card.dart';
import 'package:finance_mobile_application/utils/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({super.key, required this.size, required this.routeTo});

  final Size size;
  final Widget routeTo;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool passwordObsure = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          height: widget.size.height * 0.12,
          width: widget.size.width * 0.9,
          content: Center(
            child: ListTile(
              title: Text(
                'Email Address',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      letterSpacing: 1,
                      color: Pallete().blackishWhite,
                    ),
              ),
              subtitle: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
                Icon(
                  Icons.mail_outline_sharp,
                  color: Pallete().black,
                ),
                horizontalSpacer(10.0),
                Container(
                    // height: size.height * 0.04,
                    width: widget.size.width * 0.5,
                    // color: Colors.pink,
                    child: TextField(
                      controller: TextEditingController(text: "example@email.com"),
                      decoration: InputDecoration(border: InputBorder.none),
                    )),
              ]),
            ),
          ),
        ),
        verticalSpacer(20.0),
        CustomCard(
          height: widget.size.height * 0.12,
          width: widget.size.width * 0.9,
          content: Center(
            child: ListTile(
              title: Text(
                'Password',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      letterSpacing: 1,
                      color: Pallete().blackishWhite,
                    ),
              ),
              subtitle: Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
                Icon(
                  Icons.lock,
                  color: Pallete().black,
                ),
                horizontalSpacer(10.0),
                Container(
                    // height: size.height * 0.04,
                    width: widget.size.width * 0.5,
                    // color: Colors.pink,
                    child: TextField(
                      obscureText: passwordObsure,
                      controller: TextEditingController(text: "example@email.com"),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    )),
                horizontalSpacer(20.0),
                IconButton(
                    onPressed: () {
                      setState(() {
                        passwordObsure = !passwordObsure;
                      });
                    },
                    icon: passwordObsure
                        ? Icon(Icons.visibility_off_outlined)
                        : Icon(Icons.visibility_outlined)),
              ]),
            ),
          ),
        ),
        verticalSpacer(30.0),
        Button(
          onPressed: () {
            log("Pressed");
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget.routeTo));
          },
          borderRadius: 40,
          width: widget.size.width * 0.9,
          height: widget.size.height * 0.08,
          color: Pallete().purple,
          text: "Login",
        ),
        verticalSpacer(30.0),
        Container(
          width: widget.size.width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'SignUp',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Pallete().grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Forgot Password?',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Pallete().grey),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
