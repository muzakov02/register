import 'package:flutter/material.dart';
import 'package:register/login_page.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()),);
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
    hintText: "  Username",
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
          hintText: "Email",
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
          hintText: "Password",
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
      SizedBox(height: 15,),
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
                child: Center(child: Text("Agree and Register",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),

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
    ]
    ),
    ),
    ),
    );
  }
}
