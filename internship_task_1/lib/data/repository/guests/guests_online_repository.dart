import 'package:injectable/injectable.dart';
import 'package:internship_task_1/data/datasourse/guests/remote/guests_api_interface.dart';
import 'package:internship_task_1/domain/models/guest_data/guest_data.dart';
import 'package:internship_task_1/domain/repository/guests_repository_interface.dart';

@test
@Injectable(as: GuestRepository)
class GuestApiRepository implements GuestRepository {
  final GuestApi _api;
  GuestApiRepository(this._api);

  @override
  Future<GuestData> delete({required GuestData data}) async {
    try {
      final result = await _api.delete(data: data);
      return result;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<List<GuestData>> getAll() async {
    try {
      final result = await _api.getAll();
      return result;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<GuestData> getById({required String index}) async {
    try {
      final result = await _api.getById(index: index);
      return result;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<GuestData> post({required GuestData data}) async {
    try {
      final result = await _api.post(data: data);
      return result;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<GuestData> update({required GuestData data}) async {
    try {
      final result = await _api.update(data: data);
      return result;
    } catch(error) {
      print(error);
      rethrow;
    }
  }


}