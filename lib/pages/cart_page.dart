import 'package:flutter/material.dart';
import 'package:flutter_toko_online/pages/widgets/cart_card.dart';
import 'package:flutter_toko_online/theme.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: const Text('Your Cart'),
        elevation: 0,
      );
    }

    Widget emptyCart() {
      return Center(
          child: Container(
        width: double.infinity,
        color: backgroundColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              'Opss! Your Cart is Empty',
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
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
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
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          CartCard(),
          CartCard(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
