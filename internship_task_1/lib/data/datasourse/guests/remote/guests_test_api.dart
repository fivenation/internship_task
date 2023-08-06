// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:internship_task_1/data/datasourse/guests/remote/guests_api_interface.dart';
import 'package:internship_task_1/domain/models/guest_data/guest_data.dart';

@test
@Injectable(as: GuestApi)
class GuestTestApi implements GuestApi {

  static final testData = List<GuestData>.of([
    GuestData(
      surname: "Иванов",
      firstname: "Иван",
      age: 1062851432000,
      status: "Студент",
      phone: "+7(800)555-35-55",
      id: "1",
    ),
    GuestData(
      surname: "Пятницин",
      firstname: "Андрей",
      avatarUrl: "https://pibig.info/uploads/posts/2022-11/1669122561_9-pibig-info-p-nyan-ket-pinterest-10.png",
      age: 986169600000,
      status: "Студент",
      phone: "+7(999)999-99-99",
      id: '2',
    ),
  ],);


  @override
  Future<GuestData> delete({required GuestData data}) async {
    testData.removeWhere((element) => element == data);
    return data;
  }

  @override
  Future<List<GuestData>> getAll() async {
    return testData;
  }

  @override
  Future<GuestData> getById({required String index}) async {
    return testData.firstWhere((element) => element.id == index);
  }

  @override
  Future<GuestData> post({required GuestData data}) async {
    testData.add(data);
    return testData.firstWhere((element) => element == data);
  }

  @override
  Future<GuestData> update({required GuestData data}) async {
    testData.removeWhere((element) => element.id == data.id);
    testData.add(data);
    return data;
  }

}