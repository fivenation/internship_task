import 'package:injectable/injectable.dart';
import 'package:internship_task_1/data/datasourse/guests/local/guests_local_interface.dart';
import 'package:internship_task_1/data/datasourse/guests/remote/guests_api_interface.dart';
import 'package:internship_task_1/domain/models/guest_data/guest_data.dart';
import 'package:internship_task_1/domain/repository/guests_repository_interface.dart';

@prod
@dev
@Injectable(as: GuestRepository)
class GuestApiLocalRepository implements GuestRepository {
  final GuestApi _api;
  final GuestLocal _local;
  GuestApiLocalRepository(this._api, this._local);

  @override
  Future<GuestData> delete({required GuestData data}) async {
    try {
      final result = await _api.delete(data: data);
      final localRes = await _local.delete(data: data);
      return localRes;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<List<GuestData>> getAll() async {
    try {
      final result = await _api.getAll();
      final localRes = await _local.updateAll(list: result);
      return localRes;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<GuestData> getById({required String index}) async {
    try {
      final result = await _api.getById(index: index);
      final localRes = await _local.getById(id: index);
      return localRes;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<GuestData> post({required GuestData data}) async {
    try {
      final result = await _api.post(data: data);
      final localRes = await _local.post(data: data);
      return localRes;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<GuestData> update({required GuestData data}) async {
    try {
      final result = await _api.update(data: data);
      final localRes = await _local.update(data: data);
      return localRes;
    } catch(error) {
      print(error);
      rethrow;
    }
  }


}