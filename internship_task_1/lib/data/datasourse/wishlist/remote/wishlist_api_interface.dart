import 'package:internship_task_1/domain/models/wish_data/wish_data.dart';

abstract class WishlistApi {
  Future<List<WishData>> getAll();
  Future<WishData> getById({required String index});
  Future<WishData> post({required WishData data});
  Future<WishData> update({required WishData data});
  Future<WishData> delete({required WishData data});
}