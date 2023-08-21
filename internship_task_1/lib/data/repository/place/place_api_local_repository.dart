import 'package:injectable/injectable.dart';
import 'package:internship_task_1/domain/repository/place_repository_interface.dart';
import 'package:internship_task_1/data/datasourse/place/remote/place_api_interface.dart';
import 'package:internship_task_1/domain/models/place_data/place_data.dart';

/// Работу с Hive для Place и Wishlist сделать не успел.
/// Работает только для Guests

@dev
@prod
@Injectable(as: PlaceRepository)
class PlaceApiLocalRepository implements PlaceRepository {
  final PlaceApi _api;
  PlaceApiLocalRepository(this._api);

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