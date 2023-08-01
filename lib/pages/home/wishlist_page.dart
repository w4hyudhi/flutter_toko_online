import 'package:flutter/material.dart';
import 'package:flutter_toko_online/pages/widgets/wishlist_card.dart';
import 'package:flutter_toko_online/theme.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: const Text('Favorite Shoes'),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: backgroundColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_wishlist.png',
              width: 74,
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              'You Don\'t have dream shoes?',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Let\'s find your favorite shoes',
              style: secondaryTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 44,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  )),
            )
          ],
        ),
      ));
    }

    Widget content() {
      return Expanded(
          child: Container(
        color: backgroundColor3,
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: const [
              WishListCard(
                title: 'Terrex Urban Low',
                price: '\$143,98',
              ),
              WishListCard(
                title: 'Predator 20.3 Firm Ground Boots',
                price: '\$150,98',
              ),
            ]),
      ));
    }

    return Column(
      children: [
        header(),
        content(),
        // emptyWishlist(),
      ],
    );
  }
}
