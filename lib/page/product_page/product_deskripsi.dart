import 'package:aksamedia_technical_test/constant/color_constant.dart';
import 'package:aksamedia_technical_test/constant/font_constant.dart';
import 'package:flutter/material.dart';

class ProductDeskripsi extends StatelessWidget {
  const ProductDeskripsi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Deskripsi',
              style: RegularConstant().regularNoneMedium,
            ),
            SizedBox(
              width: 24,
              height: 24,
              child: Image.asset('assets/image/document-copy.png'),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          '*New Material*\nTerbuat dari bahan 100% Katun Linen yang\nmembuat nyaman jika digunakan.\nMenggunakan fit Relaxed Fit.\n-\nSIZE CHART RELAXED SHIRT....',
          style: RegularConstant().regularNoneMedium,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selengkapnya',
              style: SmallConstant().smallNoneMedium.copyWith(
                    color: ColorConstant.info500,
                  ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: ColorConstant.info500,
            )
          ],
        )
      ],
    );
  }
}
