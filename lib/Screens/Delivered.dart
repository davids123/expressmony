import 'package:expressmony/Screens/TabelScreen.dart';
import 'package:flutter/material.dart';

import 'Log_in_2.dart';

class Delivered extends StatefulWidget {
  const Delivered({super.key});

  @override
  State<Delivered> createState() => _DeliveredState();
}

class _DeliveredState extends State<Delivered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          'Delivered',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.green[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text('Transfer Status',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 270,
              width: double.infinity,
              color: Colors.white,
              child: Stack(
                children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10,top: 10),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.green,
                                borderRadius: BorderRadius.circular(12.5)
                          ),
                          child: Icon(Icons.check,color: Colors.white,)),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 5),
                            child: Text('Submitted \nToday at 8:19 PM'),
                          ),
                        ],
                      ),

                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10,top: 90),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12.5)
                          ),
                          child: Icon(Icons.check,color: Colors.white,)),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 90),
                        child: Text('Processed'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10,top: 150),
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12.5)
                          ),
                          child: Icon(Icons.check,color: Colors.white,)),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 150),
                        child: Text('Transfer was successful',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 54,top: 170),
                    child: Text('Today at 8:19 AM'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 54,top: 195),
                    child: Text('Bernard Kamdoum orange has now received your transfer.'),
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 228.0),
                        child: TextButton(onPressed: (){}, child: Text('SEND AGAIN',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),
                      ))
                    ],
              ),
            ),
             Align(alignment: Alignment.topLeft,
                 child: Padding(
                   padding: const EdgeInsets.only(top: 10,left: 10),
                   child: Text('Recipient',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                 )),
            SizedBox(height: 10,),
            Container(
              height: 70,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Image.asset('assets/images/img_15.png',height: 90,width: 90,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 15),
                        child: Text('Bernard kamdoum orange',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text('+237 000000000000(Orange)'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: Text('Amount',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                )),
            Container(
              height: 110,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 54),
                          child: Text('TransferAmount'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 84),
                          child: Text('Transferfee'),
                        ),
                        Text('Total charged(visa_0468)'),
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Text('TotalSent'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text('Total to reciplent',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('\$22.36'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 26),
                          child: Text('\$0.00'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('\$22.36'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('\$22.36'),
                        ),
                        Text('FCFA 10.00'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             SizedBox(height: 20,),
             Align(
                 alignment: Alignment.topLeft,
                 child: Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Text('Transfer Details',style: TextStyle(fontWeight: FontWeight.bold),),
                 )),
            SizedBox(height: 20,),
            Container(
              height: 120,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 32),
                            child: Text('Sent'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text('Received'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 9),
                            child: Text('Transfer ID'),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('July 6,2023 8:19 PM'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text('July 6,2023 8:19 PM'),
                            ),
                            Text('1502047201696682512'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>TabelScreen()));
                      },
                        child: Container(
                          margin: EdgeInsets.only(left: 10,right: 10,top: 20),
                          height: 40,
                          width: double.infinity,
                          color: Colors.green[200],
                          child: Center(child: Text('DOWNLOAD RECEIPT',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            TextButton(onPressed: (){}, child: Text('CONTACT SUPPORT',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),

          ],
        ),
      ),
    );
  }
}
