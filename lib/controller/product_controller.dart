import 'package:aksamedia_technical_test/constant/color_constant.dart';
import 'package:aksamedia_technical_test/constant/font_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  Future displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
      builder: (context) {
        return Container(
          margin: const EdgeInsets.only(top: 17, left: 21, right: 21),
          height: 300,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.close_sharp,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Text(
                    'Bagikan Prdouk',
                    style: SmallConstant().smallNoneMedium,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 46,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: ColorConstant.neutral200, width: 1.0))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Text dan Link',
                    style: SmallConstant().smallNoneRegular,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                height: 46,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: ColorConstant.neutral200, width: 1.0))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Gambar',
                    style: SmallConstant().smallNoneRegular,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
