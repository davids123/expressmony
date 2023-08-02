import 'package:flutter/material.dart';
import 'Log_in_2.dart';
import '_ExpressMony_.dart';
class ConfirmEmailorPhoneNumber extends StatefulWidget {
  const ConfirmEmailorPhoneNumber({super.key});
  @override
  State<ConfirmEmailorPhoneNumber> createState() => _ConfirmEmailorPhoneNumberState();
}
bool isLoading = false;
bool _obscureText = true;
late String email;
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
TextEditingController _OTPpasswordController = TextEditingController();
late String _OTPpassword;
Future login(String password,) async {
}
class _ConfirmEmailorPhoneNumberState extends State<ConfirmEmailorPhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#0C6257',),
        centerTitle: true,
        leading: IconButton(
        icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pop(context,);
      },
    ),
        title: Text(
          'Confirm Email or Phone Number',
          style: TextStyle(
              color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10,),
            height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15,),
            color: Colors.white,
          ),
          child: Icon(Icons.question_mark_sharp,),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Center(child: Text('Code send to [email] or [password]',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),),
          Center(child: Text('Please enternit below:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,),
            child: Form(
              key: _formKey,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: GestureDetector(
                    onTap: (){
                      setState(() {
                        _obscureText =! _obscureText;
                      });
                    },
                    child: Icon(_obscureText? Icons.visibility:Icons.visibility_off,color: Colors.black,),
                  ),
                ),
                controller: _OTPpasswordController,
                obscureText: _obscureText,
                validator: (value) {
                  if (value!.isEmpty){
                    return 'Please enter a password';
                  }
                  return null;
                },
                onSaved: (value) {
                  _OTPpassword = value!;
                },
              ),
            ),
          ),
          Expanded(child: Container(),),
          TextButton(onPressed: (){
          }, child: Text('SEND ANOTHER CODE',style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold,),),),
      Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
        ),
        child: Text(
          'Quit sign up',
          style: TextStyle(fontSize: 16.0,),
        ),
      ),
      SizedBox(height: 10,),
      InkWell(onTap: (){
        if (_formKey.currentState!.validate()) {
          login(_OTPpasswordController.text.toString(),);
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ExpressMoney(),),);
        }
      },
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,),
          child: Container(
            // margin: EdgeInsets.only(right: 10,left: 10,top: 200),
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal.shade50,
            ),
            child: Center(child: Text('NEXT',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),)),
          ),
        ),
      ),
        ],
      ),
    );
  }
}