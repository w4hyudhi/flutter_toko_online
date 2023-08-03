import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toko_online/theme.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List images = [
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png'
  ];

  final List familiarShoes = [
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
    'assets/image_shoes.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? priceColor : const Color(0xffc4c4c4),
        ),
      );
    }

    Widget familiarShoesCard(String imageUrl, int index) {
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(right: 16, left: index == 0 ? 30 : 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(image: AssetImage(imageUrl))),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 20, right: defaultMargin, left: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.chevron_left)),
                const Icon(Icons.shopping_bag),
              ],
            ),
          ),
          CarouselSlider(
              items: images
                  .map((image) => Image.asset(
                        image,
                        width: MediaQuery.of(context).size.width,
                        height: 310,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
              options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              )),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          )
        ],
      );
    }

    Widget content() {
      int index = -1;
      return Container(
        margin: EdgeInsets.only(top: 17),
        decoration: BoxDecoration(
          color: backgroundColor1,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Column(
          children: [
            //NOTE: TITTLE
            Container(
              margin: EdgeInsets.only(
                  top: defaultMargin,
                  right: defaultMargin,
                  left: defaultMargin),
              child: Row(children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TERREX URBAN LOW',
                        style: primaryTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                      Text(
                        'hicking',
                        style: secondaryTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/button_wishlist.png',
                  width: 46,
                )
              ]),
            ),
            //NOTE: PRICE
            Container(
              margin: EdgeInsets.only(
                  top: 20, right: defaultMargin, left: defaultMargin),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price starts from',
                      style: primaryTextStyle,
                    ),
                    Text(
                      '\$143,98',
                      style: priceTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    )
                  ]),
            ), //NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 40,
                left: 30,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: primaryTextStyle,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.',
                    style: subtitleTextStyle.copyWith(fontWeight: light),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
            //NOTE: DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      child: Text(
                        'Familiar Shoes',
                        style: primaryTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: familiarShoes.map((e) {
                          index++;
                          return familiarShoesCard(e, index);
                        }).toList(),
                      ),
                    )
                  ]),
            ),
            // NOTE: Button

            Container(
              margin: EdgeInsets.all(defaultMargin),
              child: Row(
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/button_chat.png'))),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      height: 54,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: Text(
                          'Add To Chart',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [header(), content()],
      ),
    );
  }
}
