import 'package:expressmony/Screens/Account.dart';
import 'package:flutter/material.dart';

// import '../BasicScreens.dart';
import 'About.dart';
import 'Choose_Recipient.dart';
import 'Delivered.dart';
import 'Log_in_2.dart';
import 'Payment.dart';
import 'Support.dart';
import 'TransferHistory.dart';
class Enter_Amount extends StatefulWidget {
  const Enter_Amount({super.key});

  @override
  State<Enter_Amount> createState() => _Enter_AmountState();
}
class _Enter_AmountState extends State<Enter_Amount> {
  bool _obscureText = true;
  String _pword = '';
  List items =[
    'assets/images/img_6.png',
    'assets/images/img_4.png',
    'assets/images/img_3.png',
    'assets/images/img_5.png',
    'assets/images/img_10.png',
  ];//6435
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();
  bool passenable = true;
  String _password = '';
  String? dropdownvalue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8,),
                  Text('Bernard Kamdoum Djoko',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  Text('xxxxxxxxxxx@xxxx.com',style: TextStyle(color: Colors.white,),),
                  SizedBox(height: 8,),
                  Text('+91  0000000000',style: TextStyle(color: Colors.white,),)
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  const Text('Account',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
              subtitle: Text('Manage your personal information'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Account()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.keyboard_alt_outlined,
              ),
              title: const Text('Transfer History',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              subtitle: Text('View your transfers'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TransferHistory(),),);
              },
            ),ListTile(
              leading: Icon(
                Icons.keyboard_alt,
              ),
              title: const Text('Payment',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              subtitle: Text('Manage your payment methods'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Psyment(),),);
              },
            ),ListTile(
              leading: Icon(
                Icons.perm_contact_cal_outlined,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  const Text('Support',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Text('Contact our team'),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Support(),),);
              },
            ),ListTile(
              leading: Icon(
                Icons.train,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  const Text('About',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                  Text('legalrotices and agreements'),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>About(),),);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: HexColor('#0C6257'),
        centerTitle: true,
        title: Text(
          'Express_Money',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    'assets/images/img_1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'CAD',
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.bold),
                ),
                Expanded(child: Container()),
                Text('XAF',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 10,
                ),
                Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 30,
                    height: 30,
                    child: Image.asset('assets/images/img_14.png')),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 10),
              child: Form(
                  child: Row(
                    children: [
                      SizedBox(
                        height: 35,
                        width: 134,
                        child: TextFormField(
                          style: TextStyle(color: Colors.black, fontSize: 30),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white10,
                              hintText: '100.00'),
                        ),
                      ),
                      Align(alignment: Alignment.topCenter,
                        child: Container(
                            margin: EdgeInsets.only(left: 20),
                            height: 30,
                            width: 50,
                            child: Image.asset('assets/images/img_8.png')),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        height: 35,
                        width: 134,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black, fontSize: 30),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white10,
                              hintText: '44,748',
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 7),
              height: 60,
              width: double.infinity,
              color: Colors.black12,
              child: Stack(
                children: [
                  Center(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 30,
                          width: 30,
                          color: Colors.white,
                          child: Image.asset(
                            'assets/images/img_1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 28,
                        ),
                        Text('CAD 1.00 = FCFA 447.48'),
                        Expanded(child: Container()),
                        Container(
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/images/img_14.png')),
                        DropdownButton<String>(
                          // value: dropdownvalue,
                          underline: Container(),
                          icon: Icon(Icons.keyboard_arrow_down),
                          style: TextStyle(color: Colors.black),
                          onChanged: (String? newvalue) {
                            setState(() {
                              dropdownvalue = newvalue;
                            });
                          },
                          items: [
                            DropdownMenuItem(value: 'One', child: Text('One')),
                            DropdownMenuItem(value: 'two', child: Text('two')),
                            DropdownMenuItem(
                                value: 'three', child: Text('three'))
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Choose_Recipient(),),);
              },
              child: Container(
                margin: EdgeInsets.only(right: 10, left: 10,),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ),
            ),
            SizedBox(height: 10,),
            TextButton(onPressed: (){
              showDialog(context: context, builder: (context){
                return AlertDialog(
                  title: Column(
                    children: [
                      Text('Enter Code'),
                      SizedBox(height: 10,),
                      Text('Enter a code to get a bonus credit on your next eligible transfer',style: TextStyle(color: Colors.black54,fontSize: 13),),
                    ],
                  ),
                  content: StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Form(
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
                          ),
                        );

                      }
                  ),


                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context,true);
                      },
                      child: Text('CANCEL',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          print('Password: $_pword');
                          Navigator.pop(context);
                          showDialog(context: context, builder: (context){
                            Future.delayed(Duration(seconds: 2),(){
                              Navigator.pop(context);
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
                    ),                          ],
                );
              });
            }, child: Text('HAVE A PROMO CODE?',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 16),)),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 10, left: 10, bottom: 10),
              height: 260,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: (){}, child: Text('Get money to Cameroon quick',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),
                        Padding(
                          padding: const EdgeInsets.only(left: 28, right: 20),
                          child: Text(
                            'Sent money quickly to Mobile Money, Bank Account or Pick Up Cash',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 58.0),
                              child: Container(
                                  height: 60,
                                  width: 90,
                                  child: Image.asset(
                                    'assets/images/img_15.png',
                                  )),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                                height: 100,
                                width: 100,
                                child: Image.asset('assets/images/img_2.png')),
                          ],
                        ),
                        Expanded(
                          child: GridView.count(
                            // physics: NeverScrollableScrollPhysics(),
                            crossAxisCount: 5,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            children:List.generate(items.length, (index) => Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(child: Image.asset(items[index],)),
                            ),),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.black,
                                  width: 0.4,
                                ),
                              ),
                            ),
                            child: Text(
                              'Full List',
                              style:
                              TextStyle(color: Colors.black, fontSize: 20),
                            )),
                      ],
                    ),
                  )),
            ),
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.black12,
              child: Stack(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Recent Transfers',
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: TextButton(onPressed: () {},child: Text('Hide',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20),),)
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Delivered(),));
            },
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Mounet  Christian',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      '\$273.64',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Delivered(),));
            },
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      color: Colors.green,
                    ),
                    child: Center(
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      '9 houre ago',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Delivered(),));
            },
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Mounet  Christian',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      '\$90.05',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Delivered(),));
            },
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      color: Colors.green,
                    ),
                    child: Center(
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      '9 houre ago',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Delivered(),));
            },
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Mounet  Christian',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      '\$62.73',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Delivered(),));
            },
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      color: Colors.green,
                    ),
                    child: Center(
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Delivered',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      '10 houre ago',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextButton(onPressed: (){}, child: Text('SEE ALL TRANSFERS',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),),
          ],
        ),
      ),
    );
  }
}