import 'package:expressmony/Screens/About.dart';
import 'package:expressmony/Screens/Account.dart';
import 'package:expressmony/Screens/Support.dart';
import 'package:flutter/material.dart';

import 'Express_Money_.dart';
// import 'LoginPage.dart';
import 'Log_in_2.dart';
import 'Payment.dart';
import 'TabelScreen.dart';
import 'TransferHistory.dart';

class ExpressMoney extends StatefulWidget {
  const ExpressMoney({super.key});

  @override
  State<ExpressMoney> createState() => _ExpressMoneyState();
}

class _ExpressMoneyState extends State<ExpressMoney> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      'image':
      'https://cdn.pixabay.com/photo/2013/07/13/14/14/bangladesh-162238_640.png',
      'id': '1',
      'name': 'Banglaesh',
      'des': 'C1.00=BDT 123.00',
    },
    {
      'image':
      'https://cdn.britannica.com/47/6847-050-075C3C65/Flag-Brazil.jpg',
      'id': '2',
      'name': 'Brazil',
      'des': 'C1.00=R\$5.25',
    },
    {
      'image':
      'https://w0.peakpx.com/wallpaper/665/191/HD-wallpaper-cambodia-f-pattern-chittoor-countries-country-flag-flags-karmughil-karmughil25-karmughil2576.jpg',
      'id': '3',
      'name': 'Cambodia',
      'des': 'C1.00=USD 1.05',
    },
    {
      'image':
      'https://w0.peakpx.com/wallpaper/489/843/HD-wallpaper-cameroon-flag-african-countries-3d-waves-flag-of-cameroon-national-symbols-cameroon-3d-flag-art-africa-cameroon.jpg',
      'id': '4',
      'name': 'Cameroon',
      'des': 'C1.00=FCFA 655.96',
    },
    {
      'image':
      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Colombia.svg/255px-Flag_of_Colombia.svg.png',
      'id': '5',
      'name': 'Colombia',
      'des': 'C1.00=COP4,545.00',
    },
    {
      'image':
      'https://media.istockphoto.com/id/184340918/photo/democratic-republic-of-the-congo-flag-close-up.jpg?s=612x612&w=0&k=20&c=NQfZbd91tAVBloZVWTwIqzVB4bz93hWe1AR2C2hs4F4=',
      'id': '6',
      'name': 'Dr Congo',
      'des': 'C1.00=USD 1.05',
    },
    {
      'image':
      'https://img.freepik.com/premium-photo/background-flag-egypt-egypt-flag_431724-5260.jpg',
      'id': '7',
      'name': 'Egypt',
      'des': 'C1.00=EGP 33.10',
    },
    {
      'image':
      'https://corecommunique.com/wp-content/uploads/2017/02/un.jpg',
      'id': '8',
      'name': 'Ethiopia',
      'des': 'C1.00=ETB 58.34',
    },
    {
      'image':
      'https://media.istockphoto.com/id/1272958648/video/ghana-flag-with-air-force.jpg?s=640x640&k=20&c=wO8Ev5E8kiyHNw6OjjZiAEHARYIa_gd7iQldIkD9Tzg=',
      'id': '9',
      'name': 'Ghana',
      'des': 'C1.00=GHS 12.40',
    },
    {
      'image':
      'https://w0.peakpx.com/wallpaper/2/680/HD-wallpaper-guatemalan-flag-central-america-guatemala-national-flag-flag-of-guatemala.jpg',
      'id': '10',
      'name': 'Guatemala',
      'des': 'C1.00=GTQ 8.19',
    }
  ];

  List<Map<String, dynamic>> _foundUsers = [];

  @override
  void initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> result = [];
    if (enteredKeyword.isEmpty) {
      result = _allUsers;
    } else {
      result = _allUsers
          .where((user) =>
          user['name'].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundUsers = result;
    });
  }

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
                  Text('xxxxxxx@gmail.com',style: TextStyle(color: Colors.white,),),
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
          '_ExpressMoney_',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: TextButton(onPressed: () {},child: Text('Welcome to Express Money!',style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.bold),),)
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, left: 10),
              child: Text(
                'Select a country for your first transfer.',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search,color: Colors.black),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                hintText: 'Country Search',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                  itemCount: _foundUsers.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Landing_Page(),),);
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 1,
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      child: ListTile(
                        leading:
                        Container(
                            height: 30,width: 30,
                            child: Image.network(_foundUsers[index]['image'],)),
                        title: Row(
                          children: [
                            Text(
                              _foundUsers[index]['name'],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 12,),
                            Text(
                              '${_foundUsers[index]['des']}',
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                      ),
                    ),
                  ))
                  : const Text(
                'No result found Please try With different Search',
                style: TextStyle(fontSize: 20),
              )),
        ],
      ),
    );
  }
}