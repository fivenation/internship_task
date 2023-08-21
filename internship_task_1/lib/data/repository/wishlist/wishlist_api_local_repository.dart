import 'package:injectable/injectable.dart';
import 'package:internship_task_1/data/datasourse/wishlist/remote/wishlist_api_interface.dart';
import 'package:internship_task_1/domain/models/wish_data/wish_data.dart';
import 'package:internship_task_1/domain/repository/wishlist_repository_interface.dart';

/// Работу с Hive для Place и Wishlist сделать не успел.
/// Работает только для Guests

@dev
@prod
@Injectable(as: WishlistRepository)
class WishlistApiLocalRepository implements WishlistRepository {
  final WishlistApi _api;
  WishlistApiLocalRepository(this._api);

  @override
  Future<WishData> delete({required WishData data}) async {
    try {
      final result = await _api.delete(data: data);
      return result;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<List<WishData>> getAll() async {
    try {
      final result = await _api.getAll();
      return result;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<WishData> getById({required String index}) async {
    try {
      final result = await _api.getById(index: index);
      return result;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<WishData> post({required WishData data}) async {
    try {
      final result = await _api.post(data: data);
      return result;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<WishData> update({required WishData data}) async {
    try {
      final result = await _api.update(data: data);
      return result;
    } catch(error) {
      print(error);
      rethrow;
    }
  }


}