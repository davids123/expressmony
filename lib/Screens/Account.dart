import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Log_in_2.dart';
import 'Login_1.dart';
class Account extends StatefulWidget {
  const Account({super.key});
  @override
  State<Account> createState() => _AccountState();
}
class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Account',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: HexColor('#0C6257'),
      ),
      backgroundColor: Colors.green[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Text('Personal information',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ),
            SizedBox(height: 20,),
            Container(
              height: 210,
              width: double.infinity,
              color: Colors.white,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Bernard kamdoum Djoko'),
                  ),
                  Divider(color: Colors.black12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Date of Birth',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('November 15,1983'),
                  ),
                  Divider(color: Colors.black12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Address',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('7159 Wrigley ct,Mississauga ONL5W 0C8'),
                  ),
                  Divider(color: Colors.black12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Please contact our support team if you wish to change your personal information.'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Account Information',style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Email Address',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text('xxxx@gmail.com'),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text('Edit',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black12,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Mobile Number',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text('+ 91  0000000000'),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text('Edit',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text('More',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                height: 117,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Transfer History',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text('xxxx@gmail.com'),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text('Send',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          ),
                        ],
                      ),
                    ),
                    Divider(color: Colors.black12,),
                    TextButton(onPressed: ()async{
                      SharedPreferences pref = await SharedPreferences.getInstance();
                      await pref.clear();
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => Login_Pages()),
                              (route) => false);
                    }, child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text('Log out',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text('Log out of Taptap send',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),)),
                        ],
                      ),
                    ),
                   ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
