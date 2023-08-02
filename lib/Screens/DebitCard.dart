import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import 'CashOutFee.dart';
import 'Log_in_2.dart';

class DebitCard extends StatefulWidget {
  const DebitCard({super.key});

  @override
  State<DebitCard> createState() => _DebitCardState();
}

class _DebitCardState extends State<DebitCard> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  void toggleSwitch(bool value) {
    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
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
        title: Text(
          'Debit Card',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Icon(Icons.lock),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Text('Secured with bank level encryption',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              // controller: _phonenumberController,
              decoration: InputDecoration(
                hintText: 'Your legal name as it appears on card',
                filled: true,
                fillColor: Colors.white,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
               Container(
                 margin: EdgeInsets.only(left: 10,top: 20),
                 height: 40,
                 width: 40,
                 child: Image.network('https://tse4.mm.bing.net/th?id=OIP.zx9HaAZ6G-qacPDvkz7IhQHaHh&pid=Api&P=0&h=180'),
               ),
                Form(
                  child: Row(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 332,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20,left: 15),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            // controller: _phonenumberController,
                            decoration: InputDecoration(
                              hintText: 'Card Number',
                              filled: true,
                              fillColor: Colors.white,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Form(
              child: Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,left: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        // controller: _phonenumberController,
                        decoration: InputDecoration(
                          hintText: 'Expration MMYY',
                          filled: true,
                          fillColor: Colors.white,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 112,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,left: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        // controller: _phonenumberController,
                        decoration: InputDecoration(
                          hintText: 'CVV',
                          suffixIcon: Icon(Icons.question_mark_sharp),
                          filled: true,
                          fillColor: Colors.white,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Text('My biling address is the same as my home address.', softWrap: false,
    maxLines: 1,
    overflow: TextOverflow.fade,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 11),),
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Transform.scale(
                  scale: 0.5,
                  child: Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.white,
                    activeTrackColor: Colors.green,
                    inactiveThumbColor: Colors.green,
                    inactiveTrackColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Text("Well securely store your card so you don't need to re-enternit every time younsend. but you can delete it at any time. we'll email you about relevant policies."),
          ),
             SizedBox(height: 10,),
          InkWell(onTap: (){
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProceedToTransfer(),),);
          },
            child: Container(
              margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
              ),
              child: Center(
                child: Text(
                  'SAVE',
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
