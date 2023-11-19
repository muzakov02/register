import 'package:flutter/material.dart';
import 'package:register/forgot_page.dart';
import 'package:register/register_page.dart';
import 'package:register/welcome_page.dart';
class LoginPage extends StatelessWidget {
  bool isHiddenPassword = true;
   LoginPage({super.key});

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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()),);
                    },
                  ),
                ),

              SizedBox(height: 30,),

                 Text("Welcome back! Glad to see you, Again",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
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
    SizedBox(height: 15,),
    TextField(
      obscureText: isHiddenPassword,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: " Enter your Password",
        hintStyle: const TextStyle(
          color:  Color(0xFF8391A1),
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
        suffixIcon: InkWell(
          onTap: _togglePasswordView,
          child: Icon(
            Icons.visibility,
          ),
        ),
      ),
    ),

              Padding(
                padding: const EdgeInsets.only(left: 245.0),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPage()),);
                }, child: Text("Forgot Password",style: TextStyle(color: Colors.black),)),
              ),
              SizedBox(height: 60,),
              Center(
                child: Container(
                  child: ElevatedButton(onPressed: (){},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,


                      ),
                      child:Container(
                        height: 60,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),)),
                      )

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(child: Text("or Login with",
                style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  Container(
                      child: ElevatedButton(onPressed: (){},

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,


                        ),
                        child:Container(
                          height: 60,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(child:Image.asset("assets/images/facebook.png"),
                          ),
                        ),
                      )

                  ),
                  Container(
                      child: ElevatedButton(onPressed: (){},

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,


                        ),
                        child:Container(
                          height: 60,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(child:Image.asset("assets/images/google.jpg"),
                          ),
                        ),
                      )

                  ),
                  Container(
                      child: ElevatedButton(onPressed: (){},

                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,


                        ),
                        child:Container(
                          height: 60,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(child:Image.asset("assets/images/apple.png"),
                          ),
                        ),
                      )

                  ),






]
              ),
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Text("Don't have an account?",
                      style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()),);
                    }, child: Text("Register Now",
                      style: TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 15),),
                    ),
                  ],
                ),
              )
              




            ],
          ),
      ),

        ),
      );

  }
  void _togglePasswordView(){
    //if(isHiddenPassword==true){
      //isHiddenPassword=false;
    //}else{
      //isHiddenPassword=true;
    //}
    setState((){
      isHiddenPassword=!isHiddenPassword;
    });
  }

  void setState(Null Function() param0) {}
}
