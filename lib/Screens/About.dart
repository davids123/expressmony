import 'package:flutter/material.dart';

import 'Log_in_2.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Know more about Taptap Send',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                height: 320,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('User Agreement',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Terms and conditions for using Taptap send'),
                    ),
                    Divider(color: Colors.black12,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Privacy Policy',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('View our privacy policy'),
                    ),
                    Divider(color: Colors.black12,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Third party notices',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Notices for third party software used by Taptap send'),
                    ),
                    Divider(color: Colors.black12,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Company Registration',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Taptap Send business registration infomation'),
                    ),
                    Divider(color: Colors.black12,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Regulatory infomation',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Licensing information from our regulators'),
                    ),
                    Divider(color: Colors.black12,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('App Version',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('1.99.0 (3897)'),
                    ),
                  ],
                )),
            SizedBox(height: 40,),
            Center(
              child: Container(
                  height: 80,
                  width: 200,
                  child: Image.asset('assets/images/img.png')),
            ),
          ],
        ),
      ),
    );
  }
}
