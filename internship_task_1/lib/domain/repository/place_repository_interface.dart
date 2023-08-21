import 'package:internship_task_1/domain/models/place_data/place_data.dart';

abstract class PlaceRepository {
  Future<PlaceData> getPlace();
}