import 'package:flutter/material.dart';
import 'package:flutter_toko_online/models/product_model.dart';
import 'package:flutter_toko_online/pages/detail_chat_page.dart';
import 'package:flutter_toko_online/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailChatPage(
              product: uninitializedProductModel(),
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(children: [
          Row(
            children: [
              Image.asset(
                'assets/image_shop_logo.png',
                width: 54,
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Souse Store',
                      style: primaryTextStyle.copyWith(fontSize: 15),
                    ),
                    Text(
                      'good night HOw do you do tomorrow',
                      style: secondaryTextStyle.copyWith(
                        fontWeight: light,
                      ),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
              Text(
                'Now',
                style: secondaryTextStyle.copyWith(fontSize: 10),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Divider(
            thickness: 1,
            color: Color(0xff2B2939),
          )
        ]),
      ),
    );
  }
}
