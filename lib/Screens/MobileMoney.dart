import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import 'CashOutFee.dart';
import 'Log_in_2.dart';

class MobileMoney extends StatefulWidget {
  const MobileMoney({super.key});

  @override
  State<MobileMoney> createState() => _MobileMoneyState();
}

class _MobileMoneyState extends State<MobileMoney> {
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
          'MobileMony',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),

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
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Text('Please double check the recipient information as we not be able to refund the transfer once it has been srnt.',style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold),),
          ),


          Expanded(child: Container()),
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
