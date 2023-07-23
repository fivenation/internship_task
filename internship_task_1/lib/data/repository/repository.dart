import 'package:injectable/injectable.dart';
import 'package:internship_task_1/data/repository/repository_interface.dart';
import 'package:internship_task_1/data/sourse/api_interface.dart';
import 'package:internship_task_1/models/guest_data/guest_data.dart';
import 'package:internship_task_1/models/place_data/place_data.dart';
import 'package:internship_task_1/models/wish_data/wish_data.dart';

@test
@dev
@prod
@Injectable(as: Repository)
class ApiRepository implements Repository {
  final Api _api;
  ApiRepository(this._api);

  @override
  Future<GuestData> addGuest(GuestData guest) async {
    try {
      final newGuest = await _api.postGuest(guest);
      return newGuest;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<WishData> addWish(WishData wish) async {
    try {
      final newWish = await _api.postWish(wish);
      return newWish;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<PlaceData> getPlace() async {
    try {
      final data = await _api.getPlace();
      return data;
    } catch(error) {
      print(error);
      rethrow;
    }
  }
}