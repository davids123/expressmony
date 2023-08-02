import 'package:flutter/material.dart';

class ProcessingTransferScreen extends StatefulWidget {
  const ProcessingTransferScreen({super.key});

  @override
  State<ProcessingTransferScreen> createState() => _ProcessingTransferScreenState();
}

class _ProcessingTransferScreenState extends State<ProcessingTransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60,),
            Center(
              child: Container(
                  height: 90,
                  width: 140,
                  child: Image.asset('assets/images/img.png',height: 60,width: 100,)),
            ),
            SizedBox(height: 10,),
            Text('Your transfer to Bernard',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
            Text('Kamdounm orange is processing!',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
            SizedBox(height: 200,),
            Text('XAF',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
            Text('1,000',style: TextStyle(color: Colors.black,fontSize: 55,fontWeight: FontWeight.bold),),
            SizedBox(height: 190,),
            Text('Your transfer iD is #150204720169682512.',style: TextStyle(color: Colors.black54,fontSize: 15),),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Text('Well send you a notification as soon as it goes through',style: TextStyle(color: Colors.black54,fontSize: 13),),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
              ),
              child: Center(
                  child: Text(
                    'OK',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
            ),

          ],
        ),
      ),
    );
  }
}
