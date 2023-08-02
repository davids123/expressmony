import 'package:flutter/material.dart';

import 'BasicClass.dart';

class BasicScreen extends StatefulWidget {
  const BasicScreen({super.key});

  @override
  State<BasicScreen> createState() => _BasicScreenState();
}

class _BasicScreenState extends State<BasicScreen> {
  static List<String> fruitname = ['Mounet Christian','Mounet Christian','Mounet Christian'];
  static List Fully = [
    '\$273.64',
    '\$903.05',
    '\$62.73',
  ];
  static List Fture = [
    'https://tse2.mm.bing.net/th?id=OIP.67K1BikGZN9_LCplGQru6QHaHa&pid=Api&P=0&h=180',
    'https://tse2.mm.bing.net/th?id=OIP.67K1BikGZN9_LCplGQru6QHaHa&pid=Api&P=0&h=180',
    'https://tse2.mm.bing.net/th?id=OIP.67K1BikGZN9_LCplGQru6QHaHa&pid=Api&P=0&h=180',
  ];
  static List Fine = [
    'Delivered',
    'Delivered',
    'Delivered',
  ];
  static List Hour = [
    '9 hours ago',
    '9 hours ago',
    '9 hours ago',
  ];
  final List<FruitDataModel> Fruitdata = List.generate(fruitname.length, (index) => FruitDataModel('${fruitname[index]}', '${Fully[index]}', '${fruitname[index]} Description...','${Fture[index]}','${Fine[index]}', '${Hour[index]}',),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: Fruitdata.length,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Text(Fruitdata[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
                              Row(
                                children: [
                                  Container(
                                    // margin: EdgeInsets.only(right: 13),
                                      height: 15,
                                      width: 15,
                                      child: Image.network(Fruitdata[index].Fture,)),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 35),
                                    child:
                                    Text(Fruitdata[index].Fine,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                                  ),
                                ],
                              ),


                            ],
                          ),
                        ),
                        Expanded(child: Container()),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(Fruitdata[index].Fully,style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            Text(Fruitdata[index].Hour,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),

                          ],
                        ),

                      ],
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
