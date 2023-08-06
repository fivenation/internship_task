import 'package:internship_task_1/domain/models/guest_data/guest_data.dart';

abstract class GuestApi {
  Future<List<GuestData>> getAll();
  Future<GuestData> getById({required String index});
  Future<GuestData> post({required GuestData data});
  Future<GuestData> update({required GuestData data});
  Future<GuestData> delete({required GuestData data});
}