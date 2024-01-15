import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/theming/assets.dart';

import 'main_layout_state.dart';

class MainLayoutCubit extends Cubit<MainLayoutState> {
  MainLayoutCubit() : super(NavbarInitial());

  static MainLayoutCubit get(context) => BlocProvider.of(context);
  int currentindex = 0;

  void changebutton(int index) {
    currentindex = index;
    emit(Changebuttonnavbarstate());
  }

  List<Map<String, dynamic>> labelsandIcons = [
    {"label": "Home", "image": Assets.assetsImagesHome},
    {"label": "favorites", "image": Assets.assetsImagesHeart},
    {"label": "cart", "image": Assets.assetsImagesBagGray},
    {"label": "wallet", "image": Assets.assetsImagesVector},
  ];
}
