import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:internship_task_1/data/datasourse/guests/local/guests_local_interface.dart';
import 'package:internship_task_1/data/models/guests/hive_guest_mapper.dart';
import 'package:internship_task_1/data/models/guests/hive_guest_object.dart';
import 'package:internship_task_1/domain/models/guest_data/guest_data.dart';

@prod
@dev
@Injectable(as: GuestLocal)
class GuestHiveLocal implements GuestLocal {
  final Box<HiveGuestObject> guestBox;
  GuestHiveLocal({required this.guestBox});

  @factoryMethod
  static Future<GuestHiveLocal> create() async {
    await Hive.initFlutter();
    Hive.registerAdapter(HiveGuestAdapter());
    final guestBox = await Hive.openBox<HiveGuestObject>('guests');
    return GuestHiveLocal(guestBox: guestBox);
  }

  // В целом не нужно
  /*
  @disposeMethod
  void dispose() {
    guestBox.close();
  }
   */

  @override
  Future<GuestData> delete({required GuestData data}) async {
    try {
      final deleted = guestBox.getAt(guestBox.values.toList().indexWhere((element) => element.id == data.id))!;
      await guestBox.deleteAt(guestBox.values.toList().indexWhere((element) => element.id == data.id));
      return HiveGuestMapper.fromHive(deleted);
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<List<GuestData>> getAll() async {
    try {
      final res = guestBox.toMap().values.toList();
      return HiveGuestMapper.fromHiveList(res);
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<GuestData> getById({required String id}) async {
    try {
      return HiveGuestMapper.fromHive(guestBox.getAt(guestBox.values.toList().indexWhere((element) => element.id == id))!);
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<GuestData> post({required GuestData data}) async {
    try {
      await guestBox.add(HiveGuestMapper.toHive(data));
      return HiveGuestMapper.fromHive(guestBox.getAt(guestBox.values.toList().indexWhere((element) => element.id == data.id))!);
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<List<GuestData>> updateAll({required List<GuestData> list}) async {
    try {
      await guestBox.clear();
      await guestBox.addAll(HiveGuestMapper.toHiveList(list));
      final res = guestBox.toMap().values.toList();
      return HiveGuestMapper.fromHiveList(res);
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<GuestData> update({required GuestData data}) async {
    try {
      await guestBox.putAt(guestBox.values.toList().indexWhere((element) => element.id == data.id), HiveGuestMapper.toHive(data));
      return HiveGuestMapper.fromHive(guestBox.getAt(guestBox.values.toList().indexWhere((element) => element.id == data.id))!);
    } catch(error) {
      print(error);
      rethrow;
    }
  }

}