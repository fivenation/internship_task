import 'package:internship_task_1/domain/models/guest_data/guest_data.dart';

abstract class GuestLocal {
  Future<List<GuestData>> getAll();
  Future<GuestData> getById({required int id});
  Future<GuestData> post({required GuestData data});
  Future<GuestData> update({required GuestData data});
  Future<GuestData> delete({required GuestData data});
}