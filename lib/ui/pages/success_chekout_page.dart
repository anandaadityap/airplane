import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class SuccessChekoutPage extends StatelessWidget {
  const SuccessChekoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget scheduling() {
      return Container(
        margin: EdgeInsets.only(top: 150, right: 39, left: 36),
        height: 150,
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_success.png'),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget myBookings() {
      return CustomButton(
        width: 220,
        title: 'My Bookings',
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            '/main',
            (route) => false,
          );
        },
        margin: EdgeInsets.only(top: 50),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                scheduling(),
                content(),
                myBookings(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
