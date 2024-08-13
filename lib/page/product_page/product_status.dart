import 'package:aksamedia_technical_test/constant/color_constant.dart';
import 'package:aksamedia_technical_test/constant/font_constant.dart';
import 'package:flutter/material.dart';

class ProductStatus extends StatelessWidget {
  const ProductStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 150,
          height: 26,
          decoration: BoxDecoration(
              color: const Color(0XFFECE806),
              borderRadius: BorderRadius.circular(
                6,
              )),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Text(
                  'NEW',
                  style: RegularConstant().regularNormalBold,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  'Product Baru',
                  style: SmallConstant().smallNoneRegular,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 24,
          height: 24,
          child: Image.asset(
            'assets/image/Vector.png',
            color: ColorPrimary.primary950,
          ),
        ),
      ],
    );
  }
}
