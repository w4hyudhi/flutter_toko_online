import 'package:flutter/material.dart';
import 'package:flutter_toko_online/models/product_model.dart';
import 'package:flutter_toko_online/providers/wishlist_provider.dart';
import 'package:flutter_toko_online/theme.dart';
import 'package:provider/provider.dart';

class WishListCard extends StatelessWidget {
  final ProductModel product;
  const WishListCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);
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
            child: Image.network(
              product.galleries![0].url!,
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
                  product.name!,
                  style: primaryTextStyle.copyWith(fontWeight: semiBold),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '\$${product.price}',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              wishlistProvider.setProduct(product);
            },
            child: Image.asset(
              'assets/button_wishlist_blue.png',
              width: 34,
            ),
          )
        ],
      ),
    );
  }
}
