import 'package:flutter/material.dart';

import 'Log_in_2.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
     appBar: AppBar(
       backgroundColor: HexColor('#0C6257'),
       leading: IconButton(onPressed: () {
         Navigator.pop(context);
       },icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),
       centerTitle: true,
       title: Text('Support',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
     ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text('Help is available through any of these channels:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
              height: 154,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('FAQs',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Frequently asked questions'),
                  ),
                  Divider(color: Colors.black12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Email xxxxxx@gmail.com',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('For fastest response'),
                  ),
                  Divider(color: Colors.black12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Call+ 91  0000000000',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('24/7 agent assistance'),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Text('if you are unable to connect via phone. please email us instead.'),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Text("if you'd like to request the deletion of your account information. please email us at xxxxxx@gmail.come"),
          ),
        ],
      ),
    );
  }
}
