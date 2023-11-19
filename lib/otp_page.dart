import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:register/forgot_page.dart';
import 'package:register/reset_page.dart';
class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

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
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPage()),);
    },
    ),
    ),

    SizedBox(height: 10,),

    Text("OTP Verification",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
    SizedBox(height: 10,),
    Text("Enter the verification code we just sent on your email address",
    style: TextStyle(fontSize: 16,
    fontWeight: FontWeight.w500),
    ),
      SizedBox(height: 57,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 68,
            width: 64,
            decoration: BoxDecoration(
                border:Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              onChanged: (value){
                if (value.length==1){
                  FocusScope.of(context).nextFocus();
                }
              },
              onSaved: (pin1){},

              style: Theme.of(context).textTheme.headlineLarge,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          Container(
            height: 68,
            width: 64,
            decoration: BoxDecoration(
                border:Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              onSaved: (pin2){},
              onChanged: (value){
                if (value.length==1){
                  FocusScope.of(context).nextFocus();
                }
              },

              style: Theme.of(context).textTheme.headlineLarge,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          Container(
            height: 68,
            width: 64,
            decoration: BoxDecoration(
                border:Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              onSaved: (pin3){},
              onChanged: (value){
                if (value.length==1){
                  FocusScope.of(context).nextFocus();
                }
              },

              style: Theme.of(context).textTheme.headlineLarge,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          Container(
            height: 68,
            width: 64,
            decoration: BoxDecoration(
              border:Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(8),
            ),

            child: TextFormField(
              onSaved: (pin4){},
              onChanged: (value){
                if (value.length==1){
                  FocusScope.of(context).nextFocus();
                }
              },


              style: Theme.of(context).textTheme.headlineLarge,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 30,),
      Center(
        child: Container(
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPage()),);
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
                child: Center(child: Text("Verify",style: TextStyle(color: Colors.white,fontSize: 20),)),
              )

          ),
        ),
      ),
      SizedBox(height: 380,),
      Padding(
        padding: const EdgeInsets.only(left: 80),
        child: Row(
          children: [
            Text("Didn't recieved code?",
              style: TextStyle(fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            TextButton(onPressed: (){},
              child: Text("Resend",
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



