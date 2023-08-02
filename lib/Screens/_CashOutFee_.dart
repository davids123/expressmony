import 'package:flutter/material.dart';
import 'Log_in_2.dart';
import 'ProcessingTransferScreen.dart';
class ConfirmTransfer extends StatefulWidget {
  const ConfirmTransfer({super.key});
  @override
  State<ConfirmTransfer> createState() => _ConfirmTransferState();
}
class _ConfirmTransferState extends State<ConfirmTransfer> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();
  bool isLoading = true;
  String _pword = '';
  bool passenable = true;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
          '_Cash Out Fee_',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close,color: Colors.white,)),
        ],
        backgroundColor: HexColor('#0C6257'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Canent service good.30% of transrers are completed'),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Icon(Icons.alarm,color: Colors.green,),
                ),
                Text('Within 2 minutes.if issues with Orange affect a \ntransfer, if should still be processed within 5 h.',maxLines: 2,overflow: TextOverflow.ellipsis,),
              ],
            ),
            Divider(),

            Container(
              margin: EdgeInsets.only(right: 6, left: 6,),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Amount',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Expanded(child: Container(),),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextButton(onPressed: () {},child: Text('Edit',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),),)
                    ),
                  ],
                ),
              ),
            ),

            Row(
              children: [
                SizedBox(width: 8,),
                Text('TransferAmount',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('\$22.36',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 8,),
                Text('Transferfree',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('\$0.00',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 8,),
                Text('Total charged(visa_0468)',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('\$22.36',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 8,),
                Text('TotalSent',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('\$22.36',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                SizedBox(width: 8,),
                Text('Total to reciplent',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('FCFA 10.00',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
              ],
            ),

            SizedBox(height: 5,),
            Text('Exchange rate \$1.00=FCFA 447.26',style: TextStyle(color: Colors.black54),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                children: [
                  Text('Orange may deduct a fee of FCFA 195 if\n Mounet Christian cashes out.',style: TextStyle(color: Colors.black54),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            TextButton(onPressed: (){}, child: Text('HAVE A PROMO CODE?',style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold),)),
            SizedBox(height: 8,),
            Container(
              margin: EdgeInsets.only(right: 6, left: 6,),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Recipient',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Expanded(child: Container(),),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child:TextButton(onPressed: () {},child: Text('Edit',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),),)
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Container(
                    height: 90,
                    width: 90,
                    child: Image.asset('assets/images/img_15.png')),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text('Mounet Christian',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    Text('+237   694 29 05 14(orange)',style: TextStyle(color: Colors.black54),),

                  ],
                )
              ],
            ),

            Container(
              margin: EdgeInsets.only(right: 6, left: 6,),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Text(
                      'Payment Method',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Expanded(child: Container(),),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: TextButton(onPressed: () {},child: Text('Edit',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),),)
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 7,),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 20,
                  width: 40,
                  color: Colors.indigo,
                  child: Center(child: Text('VISA',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                ),
                SizedBox(width: 10,),
                Text('Visa...0468',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),

              ],
            ),

            Align(alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 58.0),
                  child: Text('Expires August 2027',style: TextStyle(color: Colors.black54),),
                )),
            SizedBox(height: 20,),
            InkWell(onTap: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Column(
                    children: [
                      Text('Confirm Password'),
                      SizedBox(height: 10,),
                      Text('Please enter your Taptap send password to start your transfer',style: TextStyle(color: Colors.black54,fontSize: 13),),
                      SizedBox(height: 10,),
                      StatefulBuilder(
                          builder: (BuildContext context, StateSetter setState) {
                            return Form(
                              key: _formKey,
                              child: TextFormField(
                                controller: _passwordController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                    child: Icon(
                                      _obscureText ? Icons.visibility : Icons.visibility_off,
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: 'password',
                                ),
                                obscureText: _obscureText,
                                validator: (value) {
                                  // _passwordController.clear();
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter password';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _pword = value!;
                                },
                              ),
                            );

                          }
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10,bottom: 20),
                            child: Text('Forgot Password?',style: TextStyle(decoration: TextDecoration.underline,fontSize: 10),),
                          )),

                      Row(
                        children: [
                          Expanded(child: Container()),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context,true);
                            },
                            child: Text('CANCEL',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(width: 10,),
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                print('Password: $_pword');
                                Navigator.pop(context);
                                showDialog(context: context, builder: (context){
                                  Future.delayed(Duration(seconds: 2),(){
                                    Navigator.pop(context);
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProcessingTransferScreen(),),);
                                  });
                                  return Container(
                                    height: 50,
                                    width: 40,
                                    child: AlertDialog(
                                      backgroundColor: Colors.white10,
                                      title:Column(
                                        children: [
                                          CircularProgressIndicator(
                                            color: Colors.black,

                                          ),
                                          SizedBox(height: 10,),
                                          Text('Sending transfer',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                    ),
                                  );
                                });
                              }
                              _passwordController.clear();
                            },
                            child: Text('OKAY',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),

                    ],
                  ),

                );
              });
            },
              child: Container(
                margin: EdgeInsets.only(right: 6, left: 6,),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                ),
                child: Center(
                    child: Text(
                      'SEND',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
