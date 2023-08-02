import 'package:flutter/material.dart';

import 'RecipientDetails_.dart';
import '_RecipientDetails.dart';
import '__RecipientDetails__.dart';
import 'Log_in_2.dart';

class Add_New_Recipient extends StatefulWidget {
  const Add_New_Recipient({super.key});

  @override
  State<Add_New_Recipient> createState() => _Add_New_RecipientState();
}

class _Add_New_RecipientState extends State<Add_New_Recipient> {
  bool? isChecked = false;
  bool? isChecke = false;
  bool? isCheck = false;
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
        title: Text('Recipient_Details', style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
        actions: [
          IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close,color: Colors.white,)),
        ],
        centerTitle: true,
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10),
            child: Text('Who do you want your recipient to receive money?', style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
          ),


          Row(
            children: [
              Align(alignment: Alignment.topLeft,
                child: Container(height: 65,width: 100,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Checkbox(value: isChecked,onChanged: (newBool){
                            setState(() {
                              isChecked = newBool;
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>New_recipient_with_Mobile_Money(),),);
                            });
                          }),
                        ],
                      ),
                      Align(alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text('MobileMony',style: TextStyle(fontSize: 10),),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 70,),
              Container(height: 65,width: 50,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [

                        Checkbox(value: isChecke, onChanged: (newBool){
                          setState(() {
                            isChecke = newBool;
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_Bank_Details(),),);
                          });
                        }),
                      ],
                    ),
                    Text('Bank',style: TextStyle(fontSize: 10),),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(height: 65,width: 50,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [

                        Checkbox(value: isCheck, onChanged: (newBool){
                          setState(() {
                            isCheck = newBool;
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_New_Recepint(),),);
                          });
                        }),
                      ],
                    ),
                    Text('Bank',style: TextStyle(fontSize: 10),),
                  ],
                ),
              ),
            ],
          ),

          Align(alignment: Alignment.topLeft,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,top: 10),
                  height: 40,
                  width: 100,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Image.asset('assets/images/img_15.png',height: 50,width: 50,),
                      Image.asset('assets/images/img_2.png',height: 50,width: 50,),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 60),
                    height: 40,
                    width: 30,
                    child: Image.asset('assets/images/img_4.png')),
                Expanded(child: Container()),
                Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 40,
                    width: 30,
                    child: Image.asset('assets/images/img_4.png')),
              ],
            ),
          ),

          Container(
              height: 50,
              width: 50,
              child: Image.asset('assets/images/img_3.png',height: 30,width: 30,)),
          Container(
              height: 40,
              width: 40,
              child: Image.asset('assets/images/img_5.png',height: 30,width: 30,)),
          Text('+ 13 Bank'),

          Expanded(child: Container()),
          InkWell(onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>New_recipient_with_Mobile_Money(),),);
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
                ),),
            ),
          ),

        ],
      ),

    );
  }
}
