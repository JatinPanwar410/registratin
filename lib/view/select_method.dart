import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:registration/const/app_vectors.dart';
import 'package:registration/view/coustomer_reg.dart';

import 'distributor_reg.dart';

class SelectMethod extends StatefulWidget {
  const SelectMethod({super.key});

  @override
  State<SelectMethod> createState() => _SelectMethodState();
}

class _SelectMethodState extends State<SelectMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEEEF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(AppVectors.AppLogo,height: 180,width: 180,),
          ),
          SizedBox(height: 41,),
          Text("Register As",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 30,),
          SizedBox(
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomerReg(),));
            }, child:Text("Customer Reg.",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DistributorReg(),));
                }, child:Text("Distributor Reg.",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
          )
        ],
      ),
    );
  }
}
