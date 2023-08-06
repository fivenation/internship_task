import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:internship_task_1/data/datasourse/place/remote/place_api_interface.dart';
import 'package:internship_task_1/domain/models/place_data/place_data.dart';

@dev
@prod
@Injectable(as: PlaceApi)
class PlaceFirebaseApi implements PlaceApi {
  final FirebaseFirestore _fire;

  PlaceFirebaseApi(this._fire);
  @factoryMethod
  static PlaceFirebaseApi init() {
    final fire = PlaceFirebaseApi(FirebaseFirestore.instance);
    return fire;
  }

  @override
  Future<PlaceData> getPlace() async {
    try {
      final req = await _fire.collection('place').doc('place_info').get();
      final res = PlaceData.fromJson(req.data()!);
      return res;
    } catch (error) {
      print(error);
      rethrow;
    }
  }

}