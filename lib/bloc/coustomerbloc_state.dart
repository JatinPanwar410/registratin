part of 'coustomerbloc_bloc.dart';

@immutable
sealed class CustomerblocState {}

final class CustomerblocInitial extends CustomerblocState {}
final class CustomerblocLoading extends CustomerblocState {}
final class CustomerblocLoaded extends CustomerblocState {
  SignUpModel customerModel;
  CustomerblocLoaded({required this.customerModel});
}
final class CustomerblocError extends CustomerblocState {
  String error;
  CustomerblocError({required this.error});
}
