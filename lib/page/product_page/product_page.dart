import 'package:aksamedia_technical_test/constant/color_constant.dart';
import 'package:aksamedia_technical_test/page/product_page/product_button.dart';
import 'package:aksamedia_technical_test/page/product_page/product_deskripsi.dart';
import 'package:aksamedia_technical_test/page/product_page/product_komisi.dart';
import 'package:aksamedia_technical_test/page/product_page/product_lain.dart';
import 'package:aksamedia_technical_test/page/product_page/product_price.dart';
import 'package:aksamedia_technical_test/page/product_page/product_serupa.dart';
import 'package:aksamedia_technical_test/page/product_page/product_status.dart';
import 'package:aksamedia_technical_test/page/product_page/product_ukuran_warna.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 34,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        actions: const [
          SizedBox(
              width: 20,
              height: 20,
              child: Image(image: AssetImage('assets/image/import.png'))),
          SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 20,
            height: 20,
            child: Image(
                image: AssetImage(
              'assets/image/shopping-cart.png',
            )),
          ),
          SizedBox(
            width: 18,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/image/product.png'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 358),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: ProductStatus(),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      'Beauty Set by lrvie',
                      style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        height: 32 / 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      'Irvie group official',
                      style: GoogleFonts.poppins().copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 20 / 20,
                        color: ColorPrimary.primary400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: ProductPrice(),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: ProductKomisi(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: ProductUkuranWarna(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 18,
                    ),
                    child: ProductDeskripsi(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 17,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: ProductLain(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: ProductSerupa(),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: ProductButton(),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
