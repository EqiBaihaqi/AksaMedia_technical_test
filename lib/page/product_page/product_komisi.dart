import 'package:aksamedia_technical_test/constant/color_constant.dart';
import 'package:aksamedia_technical_test/constant/font_constant.dart';
import 'package:flutter/material.dart';


class ProductKomisi extends StatelessWidget {
  const ProductKomisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 37,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          color: ColorSecondary.sedondary400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Komisi ',
            style: SmallConstant().smallNoneRegular.copyWith(
                  color: const Color(0XFF363939),
                ),
          ),
          Text(
            'Rp.35.600 ',
            style: RegularConstant().regularNoneBold.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
          ),
          Text(
            '(20%)',
            style: SmallConstant().smallNoneRegular.copyWith(
                  color: const Color(0XFF363939),
                ),
          ),
        ],
      ),
    );
  }
}
