import 'package:expressmony/Screens/DebitCard.dart';
import 'package:flutter/material.dart';

import 'Log_in_2.dart';
import 'MobileMoney.dart';

class Psyment extends StatefulWidget {
  const Psyment({super.key});

  @override
  State<Psyment> createState() => _PsymentState();
}

class _PsymentState extends State<Psyment> {
  Color _favIconColor = Colors.grey;
  Color _fvIconColor = Colors.grey;
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
          'Payment',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
              margin: EdgeInsets.only(left: 5,right: 5),
              height: 30,
              width: double.infinity,
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.only(right:198.0),
                child: Center(child: Text('Your Payment Methods')),
              )),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10,left: 10),
                height: 20,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: Text('VISA',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Text('Visa...0468',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(onPressed: (){
                  setState(() {
                    if(_favIconColor == Colors.grey){
                      _favIconColor = Colors.red;
                    }else{
                      _favIconColor = Colors.grey;
                    }
                  });
                }, icon: Icon(Icons.favorite_outlined), color: _favIconColor,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(onPressed: (){
                  setState(() {
                    if(_fvIconColor == Colors.grey){
                      _fvIconColor = Colors.red;
                    }else{
                      _fvIconColor = Colors.grey;
                    }
                  });
                }, icon: Icon(Icons.delete),color: _fvIconColor,),
              )
            ],
          ),
          Align(alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 18,top: 7),
                child: Row(
                  children: [
                    Text('Expires August 2027',style: TextStyle(color: Colors.black54),),
                  ],
                ),
              )),
          InkWell(onTap: (){

          },
            child: Container(
              margin: EdgeInsets.only(right: 5, left: 5, top: 10),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green.shade200,
              ),
              child: Center(
                child: Text(
                  'ADD A PAYMENT METHOD',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),),
            ),
          ),
          SizedBox(height: 70,),
          InkWell(onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileMoney(),),);
          },
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.green.shade200,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 3,color: Colors.green)
              ),
              child: Text(
                'MOBILE MONEY',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 50,),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DebitCard()));
          },
            child: Container(

              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.green.shade200,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(width: 2,color: Colors.green)
              ),
              child: Center(
                child: Text(
                  'DEBIT CARD',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),),
            ),
          ),
        ],
      ),
    );
  }
}