import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/bloc/guest_bloc/guest_bloc.dart';
import 'package:internship_task_1/domain/dependencies/service_locator.dart';
import 'package:internship_task_1/domain/models/guest_data/guest_data.dart';
import 'package:internship_task_1/presentation/components/custom_progress_indicator.dart';
import 'package:internship_task_1/presentation/pages/guests_page/widgets/guest_add_form.dart';
import 'package:internship_task_1/presentation/pages/guests_page/widgets/guest_list_item.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';
import 'package:provider/provider.dart';

//@RoutePage()
class GuestPage extends StatefulWidget {
  GuestPage({Key? key}) : super(key: key);

  @override
  State<GuestPage> createState() => _GuestPageState();
}

class _GuestPageState extends State<GuestPage> {
  static const list = <String>['По имени', 'По фамилии', 'По возрасту'];

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<GuestBloc>()..add(const GuestEvent.load());
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;

    void addGuest(GuestData guest) {
      bloc.add(GuestEvent.add(newGuest: guest));
      setState(() {});
    }

    void onAddTap() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: colorScheme.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24.r),
          ),
        ),
        builder: (context) {
          return GuestAddForm(onSubmit: addGuest);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primaryColor,
        leading: IconButton(
          icon: Icon(
            size: 24.r,
            Icons.arrow_back_ios,
            color: colorScheme.appBarButtonColor,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          'Список гостей',
          style: textTheme.titleLarge!.copyWith(color: colorScheme.headerTextColor),
        ),
      ),
      body: StreamProvider<GuestState>.value(
        value: bloc.stream,
        initialData: bloc.state,
        child: Consumer<GuestState>(
          builder: (context, state, _) {

            void onItemDelete(GuestData guest) {
              bloc.add(GuestEvent.remove(deleteGuest: guest));
              setState(() { });
            }

            void onSortTap(String? value) {
              final newSort = sortByFromUI(value!);
              bloc.add(GuestEvent.sortBy(field: newSort));
            }

            return state.when(
              loading: () => const CustomProgressIndicator(),
              successful: (guests, sortBy) {
                return Container(
                  color: colorScheme.secondaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "${guests.length} гостей",
                              style: textTheme.bodyLarge!.copyWith(color: colorScheme.secondaryTextColor),
                            ),
                            DropdownButton(
                              value: sortByInUI(sortBy),
                              elevation: 4,
                              icon: null,
                              underline: null,
                              style: textTheme.bodyLarge!.copyWith(color: colorScheme.primaryOnLightTextColor,),
                              items: list.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: onSortTap,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => SizedBox(height: 16.h,),
                          itemBuilder: (context, index) => GuestListItem(item: guests[index], onDelete: () => onItemDelete(guests[index]),),
                          itemCount: guests.length
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: SizedBox(
        width: 84.r,
        height: 84.r,
        child: FloatingActionButton(
          onPressed: onAddTap,
          child: Center(
            child: Icon(
              Icons.add,
              size: 84.r,
            ),
          ),
        ),
      ),
    );
  }

  String sortByInUI(String str) {
    switch(str) {
      case 'firstname' : return 'По имени';
      case 'surname' : return 'По фамилии';
      case 'age' : return 'По возрасту';
      default : return "По имени";
    }
  }

  String sortByFromUI(String str) {
    switch(str) {
      case 'По имени' : return 'firstname';
      case 'По фамилии' : return 'surname';
      case 'По возрасту' : return 'age';
      default : return "firstname";
    }
  }
}