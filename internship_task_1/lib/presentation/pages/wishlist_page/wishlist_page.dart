

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_task_1/domain/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:internship_task_1/domain/dependencies/service_locator.dart';
import 'package:internship_task_1/domain/models/wish_data/wish_data.dart';
import 'package:internship_task_1/presentation/components/custom_progress_indicator.dart';
import 'package:internship_task_1/presentation/pages/wishlist_page/widgets/wishlist_add_form.dart';
import 'package:internship_task_1/presentation/pages/wishlist_page/widgets/wishlist_item.dart';
import 'package:internship_task_1/presentation/theme/color_scheme.dart';
import 'package:provider/provider.dart';

//@RoutePage()
class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    final bloc = getIt<WishlistBloc>()..add(const WishlistEvent.load());
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.extension<AppColorScheme>()!;

    void addWish(WishData wish) {
      bloc.add(WishlistEvent.add(newWish: wish));
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
          return WishAddForm(onSubmit: addWish);
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
          'Вишлист',
          style: textTheme.titleLarge!.copyWith(color: colorScheme.headerTextColor),
        ),
      ),
      body: StreamProvider<WishlistState>.value(
        value: bloc.stream,
        initialData: bloc.state,
        child: Consumer<WishlistState>(
          builder: (context, state, _) {
            return state.when(
              loading: () => const CustomProgressIndicator(),
              successful: (wishlist) {
                void onItemCheck(WishData item) {
                  setState(() {
                    bloc.add(WishlistEvent.update(updateWish: item.copyWith(isBooked: !item.isBooked)));
                  });
                }

                return Container(
                  color: colorScheme.secondaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
                        child: ListView.separated(
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) => SizedBox(height: 16.h,),
                            itemBuilder: (context, index) => WishListItem(item: wishlist[index], onCheck: () => onItemCheck(wishlist[index])),
                            itemCount: wishlist.length
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
}
