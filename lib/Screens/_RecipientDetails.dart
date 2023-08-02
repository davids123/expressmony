import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'Log_in_2.dart';
import 'CashOutFee.dart';

class Add_Bank_Details extends StatefulWidget {
  const Add_Bank_Details({super.key});

  @override
  State<Add_Bank_Details> createState() => _Add_Bank_DetailsState();
}

class _Add_Bank_DetailsState extends State<Add_Bank_Details> {
  final List<String> _animals = ["Dog", "Cat", "Crocodile", "Dragon"];

  // the selected value
  String? _selectedAnimal;
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
        title: Text('_RecipientDetails', style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
        actions: [
          IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close,color: Colors.white,)),

        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10,),
              Text('Bank transffer with',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
              Container(height: 30,width: 60,
                child: Image.asset('assets/images/img_16.png'),
              ),
              Container(height: 30,width: 60,
                child: Image.asset('assets/images/img_9.png'),
              ),
              Text('and 18 more',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
            ],
          ),
          Text('Please enter your recipients legal name.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
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
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0)),
            child: DropdownButton<String>(
              value: _selectedAnimal,
              onChanged: (value) {
                setState(() {
                  _selectedAnimal = value;
                });
              },
              hint: Text(
                'Bank Name',
              ),
              // Hide the default underline
              underline: Container(),
              // set the color of the dropdown menu

              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,

              ),
              isExpanded: true,

              // The list of options
              items: _animals
                  .map((e) => DropdownMenuItem(
                value: e,
                child: Container(
                  child: Text(
                    e,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ))
                  .toList(),

              // Customize the selected item
              selectedItemBuilder: (BuildContext context) => _animals
                  .map((e) => Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Text(
                  e,
                  style: const TextStyle(
                      fontSize: 18,

                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ))
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              // controller: _phonenumberController,
              decoration: InputDecoration(
                hintText: 'Bank Account Number',
                filled: true,
                fillColor: Colors.white,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              // controller: _phonenumberController,
              decoration: InputDecoration(
                hintText: 'Confirm Bank Account Number',
                filled: true,
                fillColor: Colors.white,
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
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
