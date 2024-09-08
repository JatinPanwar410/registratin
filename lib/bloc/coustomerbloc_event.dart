part of 'coustomerbloc_bloc.dart';
abstract class CustomerblocEvent{}
class CustomerUserEvents extends CustomerblocEvent{
  String email;
  String phone;
  String name;
  CustomerUserEvents({required this.email,required this.name,required this.phone});
}