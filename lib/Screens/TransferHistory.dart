import 'package:flutter/material.dart';

import 'Log_in_2.dart';
import 'TabelScreen.dart';

class TransferHistory extends StatefulWidget {
  const TransferHistory({super.key});

  @override
  State<TransferHistory> createState() => _TransferHistoryState();
}

class _TransferHistoryState extends State<TransferHistory> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      'image': 'https://cdn-icons-png.flaticon.com/512/4436/4436481.png',
      'id': '1',
      'name': 'Mounet Christian',
      'des': 'Delivered',
      'bes': '\$273.64',
      'ink': '9 hours ago'
    },
    {
      'image': 'https://cdn-icons-png.flaticon.com/512/4436/4436481.png',
      'id': '2',
      'name': 'Mounet Christian',
      'des': 'Delivered',
      'bes': '\$273.64',
      'ink': '5 hours ago'
    },
    {
      'image': 'https://cdn-icons-png.flaticon.com/512/4436/4436481.png',
      'id': '3',
      'name': 'Mounet Christian',
      'des': 'Delivered',
      'bes': '\$273.64',
      'ink': '9 hours ago'
    },
    {
      'image': 'https://cdn-icons-png.flaticon.com/512/4436/4436481.png',
      'id': '4',
      'name': 'Mounet Christian',
      'des': 'Delivered',
      'bes': '\$273.64',
      'ink': '8 hours ago'
    },
    {
      'image':
      'https://thumbs.dreamstime.com/b/white-exclamation-mark-symbol-red-circle-caution-icon-isolated-background-185985899.jpg',
      'id': '5',
      'name': 'Armand Tchonang',
      'des': 'Faild',
      'bes': '\$273.64',
      'ink': '1 hours ago'
    },
    {
      'image':
      'https://thumbs.dreamstime.com/b/white-exclamation-mark-symbol-red-circle-caution-icon-isolated-background-185985899.jpg',
      'id': '6',
      'name': 'Bertrand Group',
      'des': 'Faild',
      'bes': '\$273.64',
      'ink': '2 hours ago'
    },
    {
      'image': 'https://cdn-icons-png.flaticon.com/512/4436/4436481.png',
      'id': '7',
      'name': 'Bertnard Kamdoum Orang',
      'des': 'Delivered',
      'bes': '\$273.64',
      'ink': '6 hours ago'
    },
    {
      'image': 'https://cdn-icons-png.flaticon.com/512/4436/4436481.png',
      'id': '8',
      'name': 'Bertnard Kamdoum Orang',
      'des': 'Delivered',
      'bes': '\$273.64',
      'ink': '5 hours ago'
    },
    {
      'image': 'https://cdn-icons-png.flaticon.com/512/4436/4436481.png',
      'id': '9',
      'name': 'Junior Nsemel',
      'des': 'Delivered',
      'bes': '\$273.64',
      'ink': '4 hours ago'
    },
    {
      'image': 'https://cdn-icons-png.flaticon.com/512/4436/4436481.png',
      'id': '10',
      'name': 'Junior Nsemel',
      'des': 'Delivered',
      'bes': '\$273.64',
      'ink': '3 hours ago'
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
        centerTitle: true,
        title: Text(
          'TransferHistory',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search, color: Colors.black),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                hintText: 'Search by recipient name',
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                  itemCount: _foundUsers.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TabelScreen(),),);
                    },
                    child: Card(
                      color: Colors.white,
                      child: ListTile(
                        title: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                                Text(
                                  _foundUsers[index]['name'],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height: 15,
                                        width: 15,
                                        child: Image.network(
                                          _foundUsers[index]['image'],
                                        )),
                                    SizedBox(width: 10,),
                                    Text(
                                      _foundUsers[index]['des'],
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.bold),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(child: Container()),
                            Column(
                              children: [
                                Align(alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text('${_foundUsers[index]['bes']}',
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ),
                                Text(
                                  _foundUsers[index]['ink'],
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),
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
