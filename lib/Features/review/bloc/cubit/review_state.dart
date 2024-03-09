part of 'review_cubit.dart';

@immutable
sealed class ReviewState {}

final class ReviewInitial extends ReviewState {}
final class ReveiwSliderValue extends ReviewState {}
