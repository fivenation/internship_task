import 'package:internship_task_1/models/guest_data/guest_data.dart';
import 'package:internship_task_1/models/place_data/place_data.dart';
import 'package:internship_task_1/models/wish_data/wish_data.dart';

abstract class Repository {
  Future<PlaceData> getPlace();
  Future<GuestData> addGuest(GuestData guest);
  Future<WishData> addWish(WishData wish);
}