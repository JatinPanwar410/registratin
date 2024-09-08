import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registration/const/app_vectors.dart';
import 'package:registration/ui_helper.dart';

import '../bloc/coustomerbloc_bloc.dart';

class CustomerReg extends StatefulWidget {
  const CustomerReg({super.key});

  @override
  State<CustomerReg> createState() => _CustomerRegState();
}

class _CustomerRegState extends State<CustomerReg> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEDEEEF),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Image.asset(
                      AppVectors.AppLogo,
                      height: 100,
                      width: 100,
                    )),
                SizedBox(height: 20),
                Text(
                  "Customer\nRegistration",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Name",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 14),
                ),
                SizedBox(height: 12),
                CustomTextField(
                  controller: nameController,
                  text: "Full Name",
                ),
                SizedBox(height: 22),
                Text(
                  "Email",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 14),
                ),
                SizedBox(height: 12),
                CustomTextField(
                  controller: emailController,
                  text: "example@gmail.com",
                ),
                SizedBox(height: 22),
                Text(
                  "Phone",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 14),
                ),
                SizedBox(height: 12),
                CustomTextField(
                  controller: phoneController,
                  text: "Enter No.",
                ),
                SizedBox(height: 40),
                Center(
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          BlocConsumer<CustomerblocBloc, CustomerblocState>(
                            listener:  (context, state) {
                              if (state is CustomerblocLoaded) {
                                log(state.customerModel.success.toString());
                              } else if (state is CustomerblocError) {
                                log(state.error.toString());
                              }
                            },
                            builder: (context, state) {
                              if (state is CustomerblocLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                               BlocProvider.of<CustomerblocBloc>(context).add(
                                 CustomerUserEvents(
                                   email: emailController.text.toString(),
                                   name: nameController.text.toString(),
                                   phone: phoneController.text.toString(),
                                 ),
                               );
                              return ScaffoldMessenger(child: SnackBar(content: Text("sdklfhjsioefhi")));
                            },
                          );
                        },
                        child: Text(
                          "Register",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

// Future<void> registerCustomer() async {
//   var headers = {
//     "Content-Type": "application/json",
//     "Authorization": "Bearer K1fLV0jNr0to4vH5pMOigLvuxcQqPfwO"
//   };
//
//   var request = http.MultipartRequest(
//       "POST",
//       Uri.parse(
//           "https://admin.loanbuddha.co.in/apis/customer_registration")); // Updated API endpoint
//
//   request.fields.addAll({
//     "api_for": "customer_registration",
//     "email": emailController.text,
//     "phone": phoneController.text,
//     "name": nameController.text
//   });
//   request.headers.addAll(headers);
//
//   http.StreamedResponse response = await request.send();
//   if (response.statusCode == 201) {
//     String responseString = await response.stream.bytesToString();
//     Map<String, dynamic> responseData = jsonDecode(responseString);
//     print(responseString);
//     SignUpModel signUpModel = SignUpModel.fromJson(responseData);
//
//     ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("Customer Registration Successful")));
//
//     // Navigate to Home Screen after registration
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const HomeScreen()),
//     );
//     print(responseString);
//   } else {
//     // Handle the failure case
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text(
//             "Registration failed. Status code: ${response.statusCode}")));
//     print(response.statusCode);
//
//   }
}
