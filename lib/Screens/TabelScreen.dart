import 'package:flutter/material.dart';

class TabelScreen extends StatefulWidget {
  const TabelScreen({super.key});

  @override
  State<TabelScreen> createState() => _TabelScreenState();
}

class _TabelScreenState extends State<TabelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20,top: 40),
                child: Text('21/07/2023',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ),),
            Align(alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 100,
                  width: 170,
                  child: Image.asset('assets/images/img.png')),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Transaction Confirmation Receipt',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
                border: TableBorder.all(),
                children: [
                  buildRow(['Sender','Bemard Kamboum Djoko'],isHeader: true),
                  buildRow(['Sender Phone Number','+1 647-268-7463'],),
                  buildRow(['Sender Address','7159 Wrigley ct,Mississauge ON L5WOC8'],),
                  buildRow(['',''],),
                  buildRow(['Recipient Name','Bemard Kamboum Orange'],isHeader: true),
                  buildRow(['Recipient Phone Number','+237 6 55 52 70 22'],),
                  buildRow(['Transfer Amount','\$2.23'],),
                  buildRow(['Transfer Fee','\$0.00'],),
                  buildRow(['Total Charged','\$2.23'],),
                  buildRow(['Exchange Rate','\$1 = FCFA 447'],),
                  buildRow(['Total to Recipient','FCFA 1,000'],),
                  buildRow(['Transfer Date','2023-07-21 20:19 EDT'],),
                  buildRow(['Date Abailable','2023-07-22 01:19 Wat'],),
                  buildRow(['Transaction ID','1502047201696682512'],),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Taptap Send Payments Canade Inc is registered as a money services business with the Financial Transactions and Reports Analysis Center Under number M21060579 and with the Revers Quebec under number 904652.'),
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Taptap Send Payments Canade Inc,Britsh Columbia corporabon,ragistration number BCI287510,registered office at 2600-Three Bental Center,595 Bunard Street,CP49314 Vancouver British Colundia VTXIt3.Canada'),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

  TableRow buildRow(List<String> cells,{bool isHeader = false})=>TableRow(
    children: cells.map((cell) {
      final style = TextStyle(fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,fontSize: 13);
      return
        Padding(
          padding: const EdgeInsets.all(14),
          child: Text(cell, style: style,),
        );
    }).toList(),
  );

}
