import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ConfirmEmailorPhoneNumber.dart';
import 'Log_in_2.dart';
import '_ExpressMony_.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {


  bool isLoading = false;
  bool _obscureText = true;
  late String email;
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _phonenumberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  late String _password;
  late String _confirmPassword;
  late String _phonenumber;
  late String _email;
  int _maxWords = 8;
  Future login(String email, password,confirmPassword,phonenumber/*int id*/) async {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#0C6257'),
        centerTitle: true,
        title: Text(
          'Signup',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17.5),
              color: Colors.white,
            ),
            child: Icon(
              Icons.question_mark_sharp,
              color: HexColor('#0C6257'),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Email'),
                      controller: _emailController,
                      // obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a email';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _email = value!;
                      },
                    ),
                    Text('or',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    Align(alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          CountryCodePicker(
                            // initialSelection: 'In',
                            showCountryOnly: true,

                          ),
                          Form(child: Row(
                            children: [
                              SizedBox(height: 40,width: 252,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: _phonenumberController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter a phone number';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _phonenumber = value!;
                                  },
                                  decoration: InputDecoration(
                                      hintText: 'Phone Number',
                                      filled: true,fillColor: Colors.white
                                  ),
                                ),)
                            ],
                          ))
                        ],
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Password',
                        suffixIcon: GestureDetector(
                          onTap: (){
                            setState(() {
                              _obscureText =! _obscureText;
                            });
                          },
                          child: Icon(_obscureText? Icons.visibility:Icons.visibility_off,color: Colors.black,),
                        ),
                      ),
                      controller: _passwordController,
                      obscureText: _obscureText,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _password = value!;
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(_maxWords * 1), // Assuming average word length is 15 characters
                      ],
                    ),
                    SizedBox(height: 20,),

                    Text('Yout password should be at least 8 charachters You ned to confirm you password when sending payments.'),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Confirm Password',
                        suffixIcon: GestureDetector(
                          onTap: (){
                            setState(() {
                              _obscureText =! _obscureText;
                            });
                          },
                          child: Icon(_obscureText? Icons.visibility:Icons.visibility_off,color: Colors.black,),
                        ),),
                      controller: _confirmPasswordController,
                      obscureText: _obscureText,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a password';
                        }
                        if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _confirmPassword = value!;
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(_maxWords * 1), // Assuming average word length is 15 characters
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 260,),
            InkWell(onTap: (){
              if (_formKey.currentState!.validate()) {
                login(_emailController.text.toString(),
                    _passwordController.text.toString(),
                    _confirmPasswordController.text.toString(),
                    _phonenumberController.text.toString()
                );
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmEmailorPhoneNumber(),));
              }
            },
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
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
      ),
    );
  }
}