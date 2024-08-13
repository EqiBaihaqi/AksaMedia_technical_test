import 'package:aksamedia_technical_test/constant/color_constant.dart';
import 'package:aksamedia_technical_test/constant/font_constant.dart';
import 'package:aksamedia_technical_test/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductSerupa extends StatelessWidget {
  const ProductSerupa({super.key});

  @override
  Widget build(BuildContext context) {
    final prodouctController = Get.put(ProductController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Produk Serupa',
          style: RegularConstant().regularNoneMedium.copyWith(
                color: ColorPrimary.primary950,
              ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 160,
              height: 254,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 160,
                      height: 160,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/product.png')),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(6),
                              topRight: Radius.circular(6))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 7),
                            child: SizedBox(
                                height: 32,
                                width: 32,
                                child:
                                    Image.asset('assets/image/new-tage.png')),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Beauty Set by Irvie',
                    style: XsmallConstant().xSmallTightMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Harga reseller',
                    style: TinyConstant().tinyNoneRegular.copyWith(
                          color: ColorPrimary.primary500,
                        ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Rp142.400',
                          style: SmallConstant().smallNormalBold.copyWith(
                                color: ColorConstant.succes600,
                              ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 12,
                              width: 12,
                              child: Image(
                                  color: ColorPrimary.primary500,
                                  image: const AssetImage(
                                      'assets/image/archive.png')),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '99+ pcs',
                              style: TinyConstant().tinyNormalRegular.copyWith(
                                    color: ColorPrimary.primary500,
                                  ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: double.infinity,
                    height: 30,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          backgroundColor: ColorPrimary.primary950,
                        ),
                        onPressed: () {
                          prodouctController.displayBottomSheet(context);
                        },
                        child: Text(
                          'Bagikan Produk',
                          style: XsmallConstant()
                              .xSmallNoneRegular
                              .copyWith(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 160,
              height: 254,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/product.png')),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6))),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Beauty Set by Irvie',
                    style: XsmallConstant().xSmallTightMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Harga reseller',
                    style: TinyConstant().tinyNoneRegular.copyWith(
                          color: ColorPrimary.primary500,
                        ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Rp142.400',
                          style: SmallConstant().smallNormalBold.copyWith(
                                color: ColorConstant.succes600,
                              ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 12,
                              width: 12,
                              child: Image(
                                  color: ColorPrimary.primary500,
                                  image: const AssetImage(
                                      'assets/image/archive.png')),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              '99+ pcs',
                              style: TinyConstant().tinyNormalRegular.copyWith(
                                    color: ColorPrimary.primary500,
                                  ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: double.infinity,
                    height: 30,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(6)),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          backgroundColor: ColorPrimary.primary950,
                        ),
                        onPressed: () {
                          prodouctController.displayBottomSheet(context);
                        },
                        child: Text(
                          'Bagikan Produk',
                          style: XsmallConstant()
                              .xSmallNoneRegular
                              .copyWith(color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
