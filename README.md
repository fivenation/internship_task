# Birthday App
<img src="https://github.com/fivenation/internship_task/assets/86624715/be350506-1713-41e3-a4f3-eeb299595b15" width="190">
<img src="https://github.com/fivenation/internship_task/assets/86624715/e52a9a40-64e0-49be-8f1b-df182ca841d6" width="190">
<img src="https://github.com/fivenation/internship_task/assets/86624715/952e206b-830d-43ba-828c-cb9ad8d66eea" width="190">
<img src="https://github.com/fivenation/internship_task/assets/86624715/55039aa0-0c44-4fc1-b8db-1434afb18f97" width="190">
<img src="https://github.com/fivenation/internship_task/assets/86624715/2202dc34-21ca-4f8f-8f02-45eb4dfebca2" width="190">


### DI и Data Layer
 * Для DI взята связка getIt + Injectable.
 * Настроен getIt. 3 environment. test для репозитория с online работой, а также для работы с testApi. prod и dev для работы с репозиторием, работающим с firebase и hive.
 * Модели реализованы с применением freezed.
 * Настроены датасоурсы Hive и Firebase Cloud Firestore.
 * Соответсвенно реализованы 2 вида репозиториев для работы только с Api и для работы с Api и локальным хранилищем.
 * Все компоненты обобщены в интерфейсы - датасоурсы, репозитории.
 * Для hive реализованы dto и класс для маппинга данных hive-model.
 * Все компоненты от UI до Datasource реализованы аккуратно, прямых зависимостей нет, архитектура "чистенькая".

### Экраны гостей и вишлиста 
 * С небольшими погрешностями вёрстка выполнена, также адаптивно с помощью screenUtil (см. скриншоты).
 * Основной экран, как и вся логическая и дата часть не изменена с первого задания.
 * На экране Гостей реализована сортировка по параметрам: Возраст, Имя, Фамилия.
 * Реализовано добавление и удаление гостя, добавление и бронировка подарка.

### BloC
 * Реализованы BLoC с применением freezed.
 * Для экрана гостя на сортировку реализован ивент сортировки (сортировка происходит в BLoC).
 * В UI BLoC попадает через getIt.

