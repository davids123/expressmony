import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import 'CashOutFee.dart';
import 'Log_in_2.dart';
class New_recipient_with_Mobile_Money extends StatefulWidget {
  const New_recipient_with_Mobile_Money({super.key});

  @override
  State<New_recipient_with_Mobile_Money> createState() =>
      _New_recipient_with_Mobile_MoneyState();
}

class _New_recipient_with_Mobile_MoneyState
    extends State<New_recipient_with_Mobile_Money> {
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
          'RecipientDetails_',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close,color: Colors.white,)),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: [
                Text(
                  'Mobile money with',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 20,
                  width: 70,
                  child: Image.asset(
                    'assets/images/img_15.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 20,
                  width: 70,
                  child: Image.asset(
                    'assets/images/img_2.png',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Please enter your recipient's legal name,as registeared with their Orange or MTN mobile money service",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              // controller: _phonenumberController,
              decoration: InputDecoration(
                hintText: 'Full Name',
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
                CountryCodePicker(
                  // initialSelection: 'In',
                  showCountryOnly: true,
                ),
                Form(
                  child: Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 252,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          // controller: _phonenumberController,
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            filled: true,
                            fillColor: Colors.white,
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
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

          Expanded(child: Container()),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProceedToTransfer(),),);
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
