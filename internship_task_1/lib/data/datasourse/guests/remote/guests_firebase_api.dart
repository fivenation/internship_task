import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:internship_task_1/data/datasourse/guests/remote/guests_api_interface.dart';
import 'package:internship_task_1/domain/models/guest_data/guest_data.dart';

@dev
@prod
@Injectable(as: GuestApi)
class GuestsFirebaseApi implements GuestApi {
  final FirebaseFirestore _fire;

  GuestsFirebaseApi(this._fire);
  @factoryMethod
  static GuestsFirebaseApi init() {
    final fire = GuestsFirebaseApi(FirebaseFirestore.instance);
    return fire;
  }

  @override
  Future<GuestData> delete({required GuestData data}) async {
    try {
      final doc = _fire.collection('guests').doc(data.id);
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
  Future<List<GuestData>> getAll() async {
    try {
      final req = await _fire.collection('guests').get();
      final res = req.docs.map((e) => GuestData.fromJson(e.data())).toList();
      return res;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<GuestData> getById({required String index}) async {
    try {
      final req = await _fire.collection('place').doc(index).get();
      final res = GuestData.fromJson(req.data()!);
      return res;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<GuestData> post({required GuestData data}) async {
    try {
      final doc = _fire.collection('guests').doc(data.id);
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
  Future<GuestData> update({required GuestData data}) async {
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