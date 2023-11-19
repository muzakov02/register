import 'package:flutter/material.dart';
import 'package:register/login_page.dart';
import 'package:register/otp_page.dart';

import 'package:register/register_page.dart';
class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
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
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()),);
    },
    ),
    ),

    SizedBox(height: 10,),

    Text("Forgot Password?",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
    SizedBox(height: 10,),
      Text("Don't worry! It occurs. Please enter email adress linked with your account",
        style: TextStyle(fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
      SizedBox(height: 57,),
      const TextField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your email",
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpPage()),);
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
                child: Center(child: Text("Send Code",style: TextStyle(color: Colors.white,fontSize: 20),)),
              )

          ),
        ),
      ),
      SizedBox(height: 380,),
      Padding(
        padding: const EdgeInsets.only(left: 80),
        child: Row(
          children: [
            Text("Remember Password?",
              style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()),);
            }, child: Text("Login",
              style: TextStyle(fontWeight: FontWeight.w500,
                  fontSize: 15),),
            ),
          ],
        ),
      )
    ]
    ),
    ),
    ),
    );
  }
}
