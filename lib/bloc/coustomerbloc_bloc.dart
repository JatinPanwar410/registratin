import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:registration/models/coustomer_model.dart';
import 'package:http/http.dart' as http;

part 'coustomerbloc_event.dart';

part 'coustomerbloc_state.dart';

class CustomerblocBloc extends Bloc<CustomerblocEvent, CustomerblocState> {
  CustomerblocBloc() : super(CustomerblocInitial()) {
    on<CustomerUserEvents>((event, emit) async {
      emit(CustomerblocLoading());

      var headers = {
        "Content-Type": "application/json",
        "Authorization": "BearerK1fLV0jNr0to4vH5pMOigLvuxcQqPfwO"
      };
      var request = http.MultipartRequest(
          "POST", Uri.parse("https://admin.loanbuddha.co.in/apis/"));
      request.fields.addAll({
        "api_for": "customer_registration",
        "email": event.email,
        "phone": event.phone,
        "name": event.name
      });
      request.headers.addAll(headers);
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 201) {
        Map<String, dynamic> responsedata =
        jsonDecode(response.stream.bytesToString().toString());
        SignUpModel signupmodel = SignUpModel.fromJson(responsedata);
        emit(CustomerblocLoaded(customerModel: signupmodel));
      } else {
        emit(CustomerblocError(error: response.reasonPhrase.toString()));
        log(response.statusCode);
      }
    });
  }
}
