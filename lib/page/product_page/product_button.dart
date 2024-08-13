import 'package:aksamedia_technical_test/constant/color_constant.dart';
import 'package:aksamedia_technical_test/constant/font_constant.dart';
import 'package:flutter/material.dart';

class ProductButton extends StatelessWidget {
  const ProductButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 239,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorPrimary.primary950,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text(
                'Tambahkan ke toko',
                style: SmallConstant().smallTightMedium.copyWith(
                      color: ColorPrimary.primary950,
                    ),
              )),
        ),
        SizedBox(
          width: 90,
          height: 40,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorPrimary.primary950,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              onPressed: () {},
              child: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  'assets/image/shopping-cart.png',
                ),
              )),
        ),
      ],
    );
  }
}
