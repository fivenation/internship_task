// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:internship_task_1/data/datasourse/wishlist/remote/wishlist_api_interface.dart';
import 'package:internship_task_1/domain/models/wish_data/wish_data.dart';

@test
@Injectable(as: WishlistApi)
class PlaceTestApi implements WishlistApi {

  static final testData = List<WishData>.of([
      WishData(id: "1", title: 'Суперский подарок', url: 'https://www.youtube.com/watch?v=o-YBDTqX_ZU&ab_channel=MusRest', isBooked: false),
      WishData(id: "2", title: 'Мега крутой подарок', url: 'https://www.youtube.com/watch?v=o-YBDTqX_ZU&ab_channel=MusRest', isBooked: true),
  ]);


  @override
  Future<WishData> delete({required WishData data}) async {
    testData.removeWhere((element) => element == data);
    return data;
  }

  @override
  Future<List<WishData>> getAll() async {
    return testData;
  }

  @override
  Future<WishData> getById({required String index}) async {
    return testData.firstWhere((element) => element.id == index);
  }

  @override
  Future<WishData> post({required WishData data}) async {
    testData.add(data);
    return testData.firstWhere((element) => element == data);
  }

  @override
  Future<WishData> update({required WishData data}) async {
    testData.removeWhere((element) => element.id == data.id);
    testData.add(data);
    return data;
  }

}