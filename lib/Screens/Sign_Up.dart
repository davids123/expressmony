import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'LoginPage.dart';
import 'Log_in_2.dart';
import 'Signup.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _firstname;
  late String _lastname;

  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();

  Future login(String email, password,/*int id*/) async {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#0C6257'),
        centerTitle: true,
        title: Text(
          'Sign_Up',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _firstnameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Required';
                      }
                      if (value != _firstnameController.text) {
                        return 'Required';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _firstname = value!;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      // border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _firstname = value;
                      });
                    },
                  ),
                  TextFormField(
                    controller: _lastnameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Required';
                      }
                      if (value != _lastnameController.text) {
                        return 'Required';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      // border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      setState(() {
                        _lastname = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Container()),
          Text('      By signing up,you accept the User Agreement and'),
          Text('Privacy Policy,and you confirm that you are signing up at'),
          Text('your exclusive initiative.'),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                login(_firstnameController.text.toString(),
                    _lastnameController.text.toString());
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup(),));
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
                    'NEXT',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
