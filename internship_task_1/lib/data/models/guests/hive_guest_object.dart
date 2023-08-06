import 'package:hive/hive.dart';

part 'hive_guest_object.g.dart';

@HiveType(typeId: 0, adapterName: "HiveGuestAdapter")
class HiveGuestObject extends HiveObject {
  HiveGuestObject({
    required this.id,
    required this.firstname,
    required this.status,
    required this.age,
    required this.surname,
    this.avatarUrl,
    required this.phone
  });
  
  @HiveField(0) String id;
  @HiveField(1) String surname;
  @HiveField(2) String firstname;
  @HiveField(3) int age;
  @HiveField(4) String status;
  @HiveField(5) String?avatarUrl;
  @HiveField(6) String phone;
}