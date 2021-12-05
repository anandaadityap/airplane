import 'package:flutter/material.dart';
import '../../../shared/theme.dart';

class DestinationTile extends StatelessWidget {
  const DestinationTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/image_destination6.png'),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Danau Berantan',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Singaraja',
                  style: greyTextStyle.copyWith(
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
                '4.5',
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
