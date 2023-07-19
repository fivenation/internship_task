// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:internship_task_1/data/sourse/api_interface.dart';
import 'package:internship_task_1/models/entertainment_data/entertainment_data.dart';
import 'package:internship_task_1/models/guest_data/guest_data.dart';
import 'package:internship_task_1/models/location_data/location_data.dart';
import 'package:internship_task_1/models/place_data/place_data.dart';
import 'package:internship_task_1/models/product_data/product_data.dart';
import 'package:internship_task_1/models/wish_data/wish_data.dart';

@test
@Injectable(as: Api)
class TestApi implements Api {

  // linter-ignore
  static final _testData = PlaceData(
      images: [
        "https://trikky.ru/wp-content/blogs.dir/1/files/2020/12/15/caption.jpg",
        "https://media-cdn.tripadvisor.com/media/photo-s/0e/5e/82/b8/caption.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRobdOaGIDa_PC0Cf0FdvrX6VfuhFJzRLrbLw&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaKRf4UVl85l7VpofLLkcQg7f_5U5Bm-XCcQ&usqp=CAU",
      ],
      description: 'Приглашаю своих дорогих друзей отметить мой день рождения в замечательном месте с множеством развлечений, вкусных блюд и хорошим настроением!',
      date: 1692921600000,
      webLink: 'https://www.youtube.com/watch?v=o-YBDTqX_ZU&ab_channel=MusRest',
      guestList: [
        GuestData(
          surname: "Иванов",
          firstname: "Иван",
          age: 19,
          status: "Студент",
          phone: "+7(800)555-35-55",
        ),
        GuestData(
          surname: "Пятницин",
          firstname: "Андрей",
          avatarUrl: "https://pibig.info/uploads/posts/2022-11/1669122561_9-pibig-info-p-nyan-ket-pinterest-10.png",
          age: 22,
          status: "Студент",
          phone: "+7(999)999-99-99",
        ),
      ],
      wishList: [
        WishData(title: 'Суперский подарок', url: 'https://www.youtube.com/watch?v=o-YBDTqX_ZU&ab_channel=MusRest', isBooked: false),
        WishData(title: 'Мега крутой подарок', url: 'https://www.youtube.com/watch?v=o-YBDTqX_ZU&ab_channel=MusRest', isBooked: true),
      ],
      productList: [
        ProductData(
          title: 'Канапе',
          url: "https://cdn.lifehacker.ru/wp-content/uploads/2021/11/45_1636975813-scaled-e1636975906920-1280x640.jpg",
          ingredients: [ "Хлеб", "Ветчина", "Салат", "Яйцо" ],
        ),
        ProductData(
          title: 'Сырная тарелка',
          url: "https://www.kar-lunch.ru/storage/dishes/resized/802_572x380.PNG",
          ingredients: [ "Сыр пармезан", "Сыр дорблю", "Сыр бри", "Сыр масдам" ],
        ),
        ProductData(
          title: 'Шашлык на мангале',
          url: "https://www.edimdoma.ru/data/recipes/0014/9584/149584-ed4_wide.jpg?1651046802",
          ingredients: [ "Мясо" ],
        ),
        ProductData(
          title: 'Морепродукты',
          url: "https://avatars.dzeninfra.ru/get-zen_doc/1857554/pub_5eb954959f339d116671abe5_5ec28b1e1ad73a7902ea4d01/scale_1200",
          ingredients: [ "Устрицы", "Мидии", "Молюски", "Креветки", "Лобстер", "Крабовое мясо" ],
        ),
        ProductData(
          title: 'Свежие фрукты',
          url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJiMuptgz_x_i2Y3vhkmWt1CSfnlUKgyMGfg&usqp=CAU",
          ingredients: [ "Киви", "Виноград", "Ананас", "Арбуз", "Апельсины" ],
        ),
        ProductData(
          title: 'Авторские лимонады',
          url: "https://www.gastronom.ru/binfiles/images/20220617/b9dce7c9.jpg",
          ingredients: [ "Тархун", "Цитрусовый лимонад", "Классический лимонад" ],
        ),
      ],
      entertainmentList: [
        EntertainmentData(
          iconUrl: 'https://cdn-icons-png.flaticon.com/512/938/938590.png',
          title: 'Настольные игры',
          description: "Мафия, уно, домино, экивоки и другие",
        ),
        EntertainmentData(
          iconUrl: 'https://cdn-icons-png.flaticon.com/512/447/447852.png',
          title: "Бассейн",
          description: "Два бассейна с подогревом",
        ),
      ],
      location: LocationData(
        address: 'ул. Суворова, 2/54, Ростов-на-Дону',
        latitude: 47.222896,
        longitude: 39.715550,
      ),
  );

  @override
  Future<PlaceData> getPlace() async {
    try {
      final json = jsonEncode(_testData.toJson());
      print(json);
      final result = PlaceData.fromJson(jsonDecode(json));
      return result;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<GuestData> postGuest(GuestData guest) async {
    try {
      _testData.guestList.add(guest);
      return guest;
    } catch(error) {
      print(error);
      rethrow;
    }
  }

  @override
  Future<WishData> postWish(WishData wish) async {
    try {
      _testData.wishList.add(wish);
      return wish;
    } catch(error) {
      print(error);
      rethrow;
    }
  }
}