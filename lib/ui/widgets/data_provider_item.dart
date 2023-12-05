import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/theme.dart';

class DataProviderItem extends StatelessWidget {
  final String title;
  final String imgUrl;
  final bool isSelected;

  const DataProviderItem({
    Key? key,
    required this.title,
    required this.imgUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
          border: isSelected
              ? Border.all(
            width: 2,
            color: blueColor,
          )
              : null),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imgUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Available',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}