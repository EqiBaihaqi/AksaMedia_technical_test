import 'package:aksamedia_technical_test/constant/color_constant.dart';
import 'package:aksamedia_technical_test/constant/font_constant.dart';
import 'package:flutter/material.dart';

class PageContainerWidget extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final String imageBackground;
  final Function()? elevatedButton;
  const PageContainerWidget({
    super.key,
    required this.titleText,
    required this.subtitleText,
    required this.imageBackground,
    required this.elevatedButton,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 224),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageBackground),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 522),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 34, left: 18, right: 18, bottom: 0),
            child: Column(
              children: [
                Text(
                  titleText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: ColorPrimary.primary950,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  subtitleText,
                  textAlign: TextAlign.center,
                  style: XsmallConstant().xSmallNormalRegular,
                ),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 19,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              width: 339,
              height: 40,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                  onPressed: elevatedButton,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorPrimary.primary950),
                  child: Text(
                    'Selanjutnya',
                    style: SmallConstant().smallTightMedium.copyWith(
                          color: ColorPrimary.primary50,
                        ),
                  )),
            )),
      ],
    );
  }
}
