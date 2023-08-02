import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'SplashScreen.dart';
import '_ExpressMony_.dart';
class LOGIN_CONROLLER extends StatefulWidget {
  const LOGIN_CONROLLER({super.key});

  @override
  State<LOGIN_CONROLLER> createState() => _LOGIN_CONROLLERState();
}
class _LOGIN_CONROLLERState extends State<LOGIN_CONROLLER> {

  bool isLoading = false;
  bool _obscureText = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phonenumberController = TextEditingController();
  bool passToggle = true;
  Future login(String email, password,phonenumber) async {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: HexColor('#0C6257'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Log_in_2',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Center(
                child: Text(
                  '?',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
            ),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email';
                  }
                  return null;
                },
              ),
            ),
            Text(
              'or',
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  CountryCodePicker(
                    // initialSelection: 'In',
                    showCountryOnly: true,
                  ),
                  Form(
                    child: Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 252,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: _phonenumberController,
                            decoration: InputDecoration(
                              hintText: 'Phone Number',
                              filled: true,
                              fillColor: Colors.white,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter phoneNumber';
                              }
                              return null;
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _passwordController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.black,
                    ),
                  ),
                  hintText: 'password',
                ),
                obscureText: _obscureText,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
              ),
            ),
            Expanded(child: Container()),
            Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),),),
                      child: Text(
                        'Forgot password',
                        style: TextStyle(
                          decorationColor: Colors.black,
                        ),
                      ),
                    ),),
                InkWell(
                  onTap: () async{
                    var sharedPref = await SharedPreferences.getInstance();
                    sharedPref.setBool(Splash_ScreenState.KEYLOGIN, true);
                    if (_formKey.currentState!.validate()) {
                      login(_emailController.text.toString(),
                          _phonenumberController.text.toString(),
                          _passwordController.text.toString());
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ExpressMoney(),),);
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 10, left: 10,),
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal.shade50,
                    ),
                    child: Center(
                        child: Text(
                          'LOG  IN',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
