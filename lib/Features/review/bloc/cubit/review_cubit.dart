import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'review_state.dart';

class ReviewCubit extends Cubit<ReviewState> {
  ReviewCubit() : super(ReviewInitial());
  static ReviewCubit get(context) {
    return BlocProvider.of(context);
  }

  double value = 0;
  void changeSliderValue(double number) {
    value = number;
    emit(ReveiwSliderValue());
  }
}
