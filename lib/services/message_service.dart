import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_toko_online/models/product_model.dart';
import 'package:flutter_toko_online/models/user_model.dart';

class MessageService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addMessage(
      {UserModel? user,
      bool? isFromUser,
      String? message,
      ProductModel? product}) async {
    try {
      firestore.collection('messages').add({
        'message': message,
        'userId': user?.id,
        'userName': user?.name,
        'userImage': user?.profilePhotoUrl,
        'isFromUser': isFromUser,
        'product':
            product is uninitializedProductModel ? {} : product?.toJson(),
        'createdAt': DateTime.now().toString(),
        'updatedAt': DateTime.now().toString(),
      }).then((value) => print('Pesan berhasil Dikirim'));
    } catch (e) {
      throw Exception('Pesan Gagal dikirim');
    }
  }
}
