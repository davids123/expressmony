import 'package:flutter/material.dart';
import 'Log_in_2.dart';
import 'Sign_Up.dart';
class Login_Pages extends StatefulWidget {
  const Login_Pages({super.key});

  @override
  State<Login_Pages> createState() => _Login_PagesState();
}
class _Login_PagesState extends State<Login_Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(right: 15),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: HexColor('#0C6257'),),
                child: Center(
                  child: Text(
                    '?',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Center(child: Image.asset('assets/images/img.png')),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LOGIN_CONROLLER(),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(
                    color: HexColor('#0C6257'),
                    width: 2.10,
                  ),
                ),
                child: Center(
                    child: Text(
                      'LOG  IN',
                      style: TextStyle(
                          color: Colors.teal.shade500,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Register_Page(),),);
            },
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_Up(),),);
              },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: HexColor('#0C6257'),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'SIGN  UP',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}