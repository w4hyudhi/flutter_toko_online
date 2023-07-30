import 'package:flutter/material.dart';
import 'package:flutter_toko_online/theme.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  const ChatBubble({super.key, this.text = '', this.isSender = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.6),
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                  color: isSender ? backgroundColor5 : backgroundColor4,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                    topLeft: Radius.circular(isSender ? 12 : 0),
                    topRight: Radius.circular(!isSender ? 12 : 0),
                  )),
              child: Text(
                text,
                style: primaryTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
