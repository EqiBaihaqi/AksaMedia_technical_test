import 'package:aksamedia_technical_test/constant/color_constant.dart';
import 'package:aksamedia_technical_test/constant/font_constant.dart';
import 'package:flutter/material.dart';

class ProductUkuranWarna extends StatelessWidget {
  const ProductUkuranWarna({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorConstant.neutral200)),
      width: double.infinity,
      height: 221,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 23,
          vertical: 26,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ukuran',
              style: SmallConstant().smallNoneRegular,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 92,
                  height: 27,
                  decoration: BoxDecoration(
                    color: ColorPrimary.primary100,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: ColorPrimary.primary950,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Paket 1',
                      style: SmallConstant().smallNoneMedium,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                Container(
                  width: 92,
                  height: 27,
                  decoration: BoxDecoration(
                    color: ColorPrimary.primary100,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      'Paket 2',
                      style: SmallConstant().smallNoneMedium,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'Warna',
              style: SmallConstant().smallNoneRegular,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFDDB69A),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  width: 44,
                  height: 44,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF5B3E36),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Text(
                  'Stok : ',
                  style: SmallConstant().smallNoneRegular,
                ),
                Text(
                  '99+ pcs',
                  style: SmallConstant().smallNormalBold,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
