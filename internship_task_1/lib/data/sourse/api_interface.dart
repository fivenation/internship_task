import 'package:internship_task_1/models/guest_data/guest_data.dart';
import 'package:internship_task_1/models/place_data/place_data.dart';
import 'package:internship_task_1/models/wish_data/wish_data.dart';

abstract class Api {
  Future<PlaceData> getPlace();
  Future<GuestData> postGuest(GuestData guest);
  Future<WishData> postWish(WishData wish);
}