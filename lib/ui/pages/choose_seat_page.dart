import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/seat_item.dart';
import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsetsDirectional.only(
          top: 50,
        ),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //NOTE : AVAILABLE
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_availabel.png',
                  ),
                ),
              ),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            //NOTE : SELECTED
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_selected.png',
                  ),
                ),
              ),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            //NOTE : UNAVAILABLE
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_unvailable.png',
                  ),
                ),
              ),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            //NOTE : SEAT INDICATOR
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "A",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "B",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "C",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "D",
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //NOTE : SEAT 1
            Container(
              margin: EdgeInsetsDirectional.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                    id: 'A1',
                  ),
                  SeatItem(
                    status: 2,
                    id: 'B1',
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "1",
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                    id: 'C1',
                  ),
                  SeatItem(
                    status: 2,
                    id: 'D1',
                  ),
                ],
              ),
            ),

            //NOTE : SEAT 2
            Container(
              margin: EdgeInsetsDirectional.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                    id: 'A2',
                  ),
                  SeatItem(
                    status: 0,
                    id: 'B2',
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "2",
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                    id: 'C2',
                  ),
                  SeatItem(
                    status: 2,
                    id: 'D2',
                  ),
                ],
              ),
            ),

            //NOTE : SEAT 3
            Container(
              margin: EdgeInsetsDirectional.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 1,
                    id: 'A3',
                  ),
                  SeatItem(
                    status: 1,
                    id: 'B3',
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "3",
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                    id: 'C3',
                  ),
                  SeatItem(
                    status: 0,
                    id: 'D3',
                  ),
                ],
              ),
            ),

            //NOTE : SEAT 4
            Container(
              margin: EdgeInsetsDirectional.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                    id: 'A4',
                  ),
                  SeatItem(
                    status: 2,
                    id: 'B4',
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "4",
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                    id: 'C4',
                  ),
                  SeatItem(
                    status: 0,
                    id: 'D4',
                  ),
                ],
              ),
            ),

            //NOTE : SEAT 5
            Container(
              margin: EdgeInsetsDirectional.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                    id: 'A5',
                  ),
                  SeatItem(
                    status: 0,
                    id: 'B5',
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        "5",
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 2,
                    id: 'C5',
                  ),
                  SeatItem(
                    status: 0,
                    id: 'D5',
                  ),
                ],
              ),
            ),

            //NOTE : YOUR SEAT
            Container(
              margin: EdgeInsetsDirectional.only(
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Seat',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'A3, B3',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  )
                ],
              ),
            ),

            //NOTE : TOTAL
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: purpleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
        margin: EdgeInsets.only(
          top: 30,
          bottom: 46,
        ),
        title: 'Continue to Checkout',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CheckoutPage(),
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
