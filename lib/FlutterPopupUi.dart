import 'package:flutter/material.dart';

import 'Screens/ProcessingTransferScreen.dart';
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _pword = '';
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Popup Example'),
      ),
      body: Column(
        children: [
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
          Center(
            child: ElevatedButton(
              onPressed: () {
                _showPasswordPopup(context);
              },
              child: Text('Show Password Popup'),
            ),
          ),
        ],
      ),
    );
  }

  void _showPasswordPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        bool _showPassword = false;
        return AlertDialog(
          title: Column(
            children: [
              Text('Enter Code'),
              SizedBox(height: 10,),
              Text('Enter a code to get a bonus credit on your next eligible transfer',style: TextStyle(color: Colors.black54,fontSize: 13),),
            ],
          ),
          content: StatefulBuilder(
    builder: (BuildContext context, StateSetter setState) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
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
              // _passwordController.clear();
              if (value == null || value.isEmpty) {
                return 'Please enter password';
              }
              return null;
            },
            onSaved: (value) {
              _pword = value!;
            },
          ),
        ),
      );

    }
          ),


          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,true);
              },
              child: Text('CANCEL',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  print('Password: $_pword');
                  Navigator.pop(context);
                  showDialog(context: context, builder: (context){
                    Future.delayed(Duration(seconds: 2),(){
                      Navigator.pop(context);
                    });
                    return Container(
                      height: 50,
                      width: 40,
                      child: AlertDialog(
                        backgroundColor: Colors.white10,
                        title:Column(
                          children: [
                            CircularProgressIndicator(
                              color: Colors.black,

                            ),
                            SizedBox(height: 10,),
                            Text('Sending transfer',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    );
                  });
                }
                _passwordController.clear();
              },
              child: Text('OKAY',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
            ),                          ],
        );
      },
    );
  }
}