import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/Features/main%20layout/bloc/cubit/main_layout_cubit.dart';
import 'package:laza/Features/main%20layout/bloc/cubit/main_layout_state.dart';
import 'package:laza/Features/main%20layout/presentatin/button_navbar_widget.dart';
import 'package:laza/core/routing/app_router.dart';

class MainLayoutScreen extends StatelessWidget {
  const MainLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainLayoutCubit, MainLayoutState>(
      listener: (BuildContext context, Object? state) {},
      builder: (BuildContext context, state) {
        return Scaffold(
          body: SafeArea(
              child: AppRouter()
                  .screen[MainLayoutCubit.get(context).currentindex]),
          bottomNavigationBar: SafeArea(
            child: Container(
                margin: EdgeInsets.all(20.sp),
                height: 40.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: MainLayoutCubit.get(context).labelsandIcons.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ButtonNavWidget(
                        text: MainLayoutCubit.get(context).labelsandIcons[index]
                            ["label"],
                        check:
                            index == MainLayoutCubit.get(context).currentindex,
                        onpressed: () {
                          MainLayoutCubit.get(context).changebutton(index);
                        },
                        image: MainLayoutCubit.get(context).labelsandIcons[index]
                            ["image"]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width / 8.5,
                    );
                  },
                )),
          ),
        );
      },
    );
  }
}
