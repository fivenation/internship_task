import 'package:internship_task_1/data/models/guests/hive_guest_object.dart';
import 'package:internship_task_1/domain/models/guest_data/guest_data.dart';

class HiveGuestMapper {
  static GuestData fromHive(HiveGuestObject object) {
    return GuestData(
      id: object.id,
      firstname: object.firstname,
      status: object.status,
      surname: object.surname,
      age: object.age,
      avatarUrl: object.avatarUrl,
      phone: object.phone,
    );
  }

  static HiveGuestObject toHive(GuestData object) {
    return HiveGuestObject(
      id: object.id,
      firstname: object.firstname,
      status: object.status,
      surname: object.surname,
      age: object.age,
      avatarUrl: object.avatarUrl,
      phone: object.phone,
    );
  }

  static List<HiveGuestObject> toHiveList(List<GuestData> list) {
    final List<HiveGuestObject> hiveList = [];
    for (var element in list) {
      hiveList.add(toHive(element));
    }
    return hiveList;
  }

  static List<GuestData> fromHiveList(List<HiveGuestObject> hiveList) {
    final List<GuestData> list = [];
    for (var element in hiveList) {
      list.add(fromHive(element));
    }
    return list;
  }
}