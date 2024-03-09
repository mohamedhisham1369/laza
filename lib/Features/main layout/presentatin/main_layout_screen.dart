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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonNavWidget(
                        text: MainLayoutCubit.get(context).labelsandIcons[0]
                            ["label"],
                        check: 0 == MainLayoutCubit.get(context).currentindex,
                        onpressed: () {
                          MainLayoutCubit.get(context).changebutton(0);
                        },
                        image: MainLayoutCubit.get(context).labelsandIcons[0]
                            ["image"]),
                    ButtonNavWidget(
                        text: MainLayoutCubit.get(context).labelsandIcons[1]
                            ["label"],
                        check: 1 == MainLayoutCubit.get(context).currentindex,
                        onpressed: () {
                          MainLayoutCubit.get(context).changebutton(1);
                        },
                        image: MainLayoutCubit.get(context).labelsandIcons[1]
                            ["image"]),
                    ButtonNavWidget(
                        text: MainLayoutCubit.get(context).labelsandIcons[2]
                            ["label"],
                        check: 2 == MainLayoutCubit.get(context).currentindex,
                        onpressed: () {
                          MainLayoutCubit.get(context).changebutton(2);
                        },
                        image: MainLayoutCubit.get(context).labelsandIcons[2]
                            ["image"]),
                    ButtonNavWidget(
                        text: MainLayoutCubit.get(context).labelsandIcons[3]
                            ["label"],
                        check: 3 == MainLayoutCubit.get(context).currentindex,
                        onpressed: () {
                          MainLayoutCubit.get(context).changebutton(3);
                        },
                        image: MainLayoutCubit.get(context).labelsandIcons[3]
                            ["image"])
                  ],
                )),
          ),
        );
      },
    );
  }
}
