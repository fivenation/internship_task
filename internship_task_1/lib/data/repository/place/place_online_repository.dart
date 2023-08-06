import 'package:injectable/injectable.dart';
import 'package:internship_task_1/domain/repository/place_repository_interface.dart';
import 'package:internship_task_1/data/datasourse/place/remote/place_api_interface.dart';
import 'package:internship_task_1/domain/models/place_data/place_data.dart';

@test
@Injectable(as: PlaceRepository)
class PlaceApiRepository implements PlaceRepository {
  final PlaceApi _api;
  PlaceApiRepository(this._api);

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