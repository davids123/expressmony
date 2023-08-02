import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import 'Log_in_2.dart';
import 'CashOutFee.dart';

class Add_New_Recepint extends StatefulWidget {
  const Add_New_Recepint({super.key});

  @override
  State<Add_New_Recepint> createState() => _Add_New_RecepintState();
}

class _Add_New_RecepintState extends State<Add_New_Recepint> {
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
        title: Text('__RecipientDetails__', style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
        actions: [
          IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close,color: Colors.white,)),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
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
            padding: const EdgeInsets.all(10),
            child: Text('Please double check the recipient information as we may not be able to refund the transfer once it has been set.',maxLines: 2,overflow: TextOverflow.ellipsis,),
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
