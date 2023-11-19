import 'package:flutter/material.dart';
import 'package:register/login_page.dart';
class PasswordChanged extends StatelessWidget {
  const PasswordChanged ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("assets/images/vector.jpg",
      height: 100,
      width: 100,
      ),
      SizedBox(height: 30,),

      Text("Password changed ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
      SizedBox(height: 10,),
      Text("Your password has been changed succesfuly",
        style: TextStyle(fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
      SizedBox(height: 30,),
      Center(
        child: Container(
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()),);
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
                child: Center(child: Text("Back to Login",style: TextStyle(color: Colors.white,fontSize: 20),)),
              )

          ),
        ),
      ),


    ],
      ),
    ),
      ),
    );
  }
}
