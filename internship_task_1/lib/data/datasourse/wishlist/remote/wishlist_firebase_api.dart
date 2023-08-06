import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:internship_task_1/data/datasourse/wishlist/remote/wishlist_api_interface.dart';
import 'package:internship_task_1/domain/models/wish_data/wish_data.dart';

@dev
@prod
@Injectable(as: WishlistApi)
class WishlistFirebaseApi implements WishlistApi {
  final FirebaseFirestore _fire;

  WishlistFirebaseApi(this._fire);
  @factoryMethod
  static WishlistFirebaseApi init() {
    final fire = WishlistFirebaseApi(FirebaseFirestore.instance);
    return fire;
  }

  @override
  Future<WishData> delete({required WishData data}) async {
    try {
      final doc = _fire.collection('wishlist').doc(data.id);
      await doc.delete()
          .then((value) => print("Guest Deleted!"))
          .catchError((error) => print("FIREBASE GUEST DELETE ERROR: $error"));
      final res = data;
      return res;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<List<WishData>> getAll() async {
    try {
      final req = await _fire.collection('wishlist').get();
      final res = req.docs.map((e) => WishData.fromJson(e.data())).toList();
      return res;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<WishData> getById({required String index}) async {
    try {
      final req = await _fire.collection('wishlist').doc(index).get();
      final res = WishData.fromJson(req.data()!);
      return res;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<WishData> post({required WishData data}) async {
    try {
      final doc = _fire.collection('wishlist').doc(data.id);
      await doc.set(data.toJson())
          .then((value) => print("Guest Added!"))
          .catchError((error) => print("FIREBASE GUEST ADDING ERROR: $error"));
      final res = data;
      return res;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<WishData> update({required WishData data}) async {
    try {
      final doc = _fire.collection('guests').doc(data.id);
      await doc.update(data.toJson())
          .then((value) => print("Guest Updated!"))
          .catchError((error) => print("FIREBASE GUEST UPDATE ERROR: $error"));
      final res = data;
      return res;
    } catch(error) {
      print(error);
      rethrow;
    }
  }


}