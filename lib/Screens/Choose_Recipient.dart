import 'package:flutter/material.dart';

import 'Recipient_Details.dart';
import 'Log_in_2.dart';
import 'CashOutFee.dart';

class Choose_Recipient extends StatefulWidget {
  const Choose_Recipient({super.key});

  @override
  State<Choose_Recipient> createState() => _Choose_RecipientState();
}

class _Choose_RecipientState extends State<Choose_Recipient> {
  final List<Map<String, dynamic>> _alUsers = [
    {
      'user':
      'M',
      'id': '1',
      'name': 'Mcunet Christian',
      'des': '+ 237 687217619 (Orange)',
    },
    {
      'user':
      'A',
      'id': '2',
      'name': 'Ammand Tchonang',
      'des': '+ 237 687218719 (MTN)',
    },
    {
      'user':
      'B',
      'id': '3',
      'name': 'Berteand Group ',
      'des': '+ 237 687219819 (MTN)',
    },
    {
      'user':
      'B',
      'id': '4',
      'name': 'Bemard Kambum orange',
      'des': '+ 237 684312819 (Orange)',
    },
    {
      'user':
      'J',
      'id': '5',
      'name': 'Junlor Nsemal',
      'des': '+ 237 687215619 (Orange)',
    },
    {
      'user':
      'B',
      'id': '6',
      'name': 'Bemard Kamdoum Mtm',
      'des': '+ 237 687245819 (MTN)',
    },
    {
      'user':
      'M',
      'id': '7',
      'name': 'Mealnie kamdoum',
      'des': '+ 237 687212819 (MTN)',
    },
  ];

  List<Map<String, dynamic>> _foutdUsers = [];

  @override
  void initState() {
    _foutdUsers = _alUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> result = [];
    if (enteredKeyword.isEmpty) {
      result = _alUsers;
    } else {
      result = _alUsers
          .where((user) =>
          user['name'].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foutdUsers = result;
    });
  }

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
          'Choose_Recipient',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.close,color: Colors.white,)),
        ],
        backgroundColor: HexColor('#0C6257'),
      ),
      body: Column(
        children: [
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Add_New_Recipient(),),);
          },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.green,
                  ),
                  child: Icon(
                    Icons.person_add,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Add new recipient',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.black),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                hintText: 'Country Search',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          Align(alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Saved Recipient',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
              )),
          Expanded(
              child: _foutdUsers.isNotEmpty
                  ? ListView.builder(
                  itemCount: _foutdUsers.length,
                  itemBuilder: (context, index) => Card(
                    color: Colors.white,
                    elevation: 1,
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    child: InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProceedToTransfer(),),);
                    },
                      child: ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          child: CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 30,
                            child: Text(_foutdUsers[index]['user'],style: TextStyle(color: Colors.white),),
                            // backgroundImage:
                            // NetworkImage(_foutdUsers[index]['image']),
                            // backgroundColor: Colors.transparent,
                          ),
                        ),

                        title: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  _foutdUsers[index]['name'],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  '${_foutdUsers[index]['des']}',
                                  style: TextStyle(
                                      color: Colors.black26,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
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
