import 'package:aksamedia_technical_test/constant/color_constant.dart';
import 'package:aksamedia_technical_test/constant/font_constant.dart';
import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              'Rp178.000',
              style: RegularConstant().regularNoneBold,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Harga Customer',
              style: SmallConstant().smallNoneRegular,
            ),
          ],
        ),
        SizedBox(
          height: 44,
          child: VerticalDivider(
            color: ColorPrimary.primary500,
            thickness: 2,
          ),
        ),
        Column(
          children: [
            Text(
              'Rp178.000',
              style: RegularConstant().regularNoneBold,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Harga Reseller',
              style: SmallConstant().smallNoneRegular,
            ),
          ],
        ),
      ],
    );
  }
}
