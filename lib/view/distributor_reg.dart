import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registration/ui_helper.dart';

import '../const/app_vectors.dart';

class DistributorReg extends StatefulWidget {
  const DistributorReg({super.key});

  @override
  State<DistributorReg> createState() => _DistributorRegState();
}

class _DistributorRegState extends State<DistributorReg> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController panNoController = TextEditingController();
  TextEditingController professionController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEEEF),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset(AppVectors.AppLogo,height: 100,width: 100,)),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Distributor\nRegistration",style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.bold,),),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14),),
                    const SizedBox(height: 12,),
                    SizedBox(
                        width: 150,
                        child: CustomTextField(text: "Full Name",controller: nameController,)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Phone",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14),),
                    const SizedBox(height: 12,),
                    SizedBox(
                        width: 150,
                        child: CustomTextField(text: "Enter No.",controller: phoneController,)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14),),
                    const SizedBox(height: 12,),
                    SizedBox(
                        width: 150,
                        child: CustomTextField(text: "example@gmail.com",controller: emailController,)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PAN No.",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14),),
                    const SizedBox(height: 12,),
                    SizedBox(
                        width: 150,
                        child: CustomTextField(text: "Enter PAN No.",controller: panNoController,)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Profession",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14),),
                    const SizedBox(height: 12,),
                    SizedBox(
                        width: 150,
                        child: CustomTextField(text: "Enter Profession",controller: professionController,)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("City",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14),),
                    const SizedBox(height: 12,),
                    SizedBox(
                        width: 150,
                        child: CustomTextField(text: "Enter City",controller: cityController,)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("State",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14),),
                    const SizedBox(height: 12,),
                    SizedBox(
                        width: 150,
                        child: CustomTextField(text: "Enter State",controller: stateController,)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Referral Code",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14),),
                    const SizedBox(height: 12,),
                    SizedBox(
                        width: 150,
                        child: CustomTextField(text: "Code",controller: codeController,)),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20,),
            Center(
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                      onPressed: (){}, child: Text("Register",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 16,color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> registerDistributor()async{
    var headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer K1fLV0jNr0to4vH5pMOigLvuxcQqPfwO"
    };
  }
}
