import 'package:flutter/material.dart';
import 'package:register/otp_page.dart';
import 'package:register/password_changed.dart';
class ResetPage extends StatelessWidget {
  const ResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
        body: SafeArea(

        child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(height: 30,),

    Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
    border: Border.all(
    color: Color.fromRGBO(232, 236, 244, 1),
    ),
    borderRadius: BorderRadius.circular(12),
    color: Colors.white,
    ),
    child:  IconButton(
    icon: const Icon(Icons.arrow_back,size: 30,),
    onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpPage()),);
    },
    ),
    ),

    SizedBox(height: 10,),

    Text("Create new password ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
    SizedBox(height: 10,),
    Text("Your new password must be unique from those previously used",
    style: TextStyle(fontSize: 16,
    fontWeight: FontWeight.w500),
    ),
      SizedBox(height: 57,),
      const TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "New password",
          hintStyle: const TextStyle(
            color: Color(0xFF8391A1),
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),


        ),

      ),
      SizedBox(height: 15,),

      const TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Confirm password",
          hintStyle: const TextStyle(
            color: Color(0xFF8391A1),
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),


        ),

      ),
      SizedBox(height: 30,),
      Center(
        child: Container(
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordChanged()),);
          },

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,


              ),
              child:Container(
                height: 60,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(child: Text("Reset password",style: TextStyle(color: Colors.white,fontSize: 20),)),
              )

          ),
        ),
      ),
    ]
    ),
        )
    ),
    );
  }
}
