import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image_destination1.png'),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        margin: EdgeInsets.only(
          top: 236,
        ),
        height: 214,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            //NOTE: EMBLEM
            Container(
              width: 108,
              height: 24,
              margin: EdgeInsets.only(
                top: 30,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_emblem.png'),
                ),
              ),
            ),

            //NOTE : TITLE
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'Tangerang',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon_Star.png'),
                          ),
                        ),
                      ),
                      Text(
                        '4.8',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [backgroundImage(), customShadow(), content()],
      ),
    );
  }
}
