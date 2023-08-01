import 'package:flutter/material.dart';
import 'package:flutter_toko_online/theme.dart';

class WishListCard extends StatelessWidget {
  final title;
  final price;
  const WishListCard({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(top: 10, bottom: 14, left: 12, right: 20),
      decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 60,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: primaryTextStyle.copyWith(fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  price,
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          Image.asset(
            'assets/button_wishlist_blue.png',
            width: 34,
          )
        ],
      ),
    );
  }
}
