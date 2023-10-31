import 'package:flutter/material.dart';
import 'package:flutter_toko_online/models/cart_model.dart';

import '../../theme.dart';

class CheckoutCard extends StatelessWidget {
  final CartModel cart;
  const CheckoutCard({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    image: DecorationImage(
                        image: NetworkImage(cart.product!.galleries![0].url!))),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cart.product!.name!,
                      style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 16,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      '\$${cart.product!.price!}',
                      style: priceTextStyle,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                '${cart.quantity} Items',
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
