import 'package:flutter/material.dart';
import 'package:register/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SafeArea(

       child: Container(
         child: Column(


           children: [
             SizedBox(height: 490,),

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
                         child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),)),
                       )

                   ),
                 ),




               ),
             SizedBox(height: 15,),
             Center(
               child: Container(
                 child: ElevatedButton(onPressed: (){},

                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.white,


                     ),
                     child:Container(
                       height: 60,
                       width: 330,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(8),
                       ),
                       child: Center(child: Text("Register",style: TextStyle(color: Colors.black,fontSize: 20),)),
                     )

                 ),
               ),




             ),
             SizedBox(height: 150,),
             TextButton(onPressed: (){}, child: Text("Continue as a guest"))



           ],
         ),
       ),


      ),

    );
  }
}
