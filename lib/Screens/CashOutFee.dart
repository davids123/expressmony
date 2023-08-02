import 'package:flutter/material.dart';
import '_CashOutFee_.dart';
import 'Log_in_2.dart';
class ProceedToTransfer extends StatefulWidget {
  const ProceedToTransfer({super.key});
  @override
  State<ProceedToTransfer> createState() => _ProceedToTransferState();
}
class _ProceedToTransferState extends State<ProceedToTransfer> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  void toggleSwitch(bool value) {
    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
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
          'Cash Out Fee',
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
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Text(
              'Orange will charge Mount Christian a fee of FCFA 195 if this transfer is withdrawn as cash. Would you like to add \$0.44 to cover this fee?',style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            height: 40,
            width: double.infinity,
            child: Center(child: Row(
              children: [
                SizedBox(width: 100,),
                TextButton(onPressed: (){}, child: Text('Yes ADD \$0.44',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),),
                Expanded(child: Container()),
                Transform.scale(
                  scale: 0.7,
                  child: Switch(
                    onChanged: toggleSwitch,
                    value: isSwitched,
                    activeColor: Colors.white,
                    activeTrackColor: Colors.blue,
                    inactiveThumbColor: Colors.blue,
                    inactiveTrackColor: Colors.white,
                  ),
                ),
              ],
            )
            ),
          ),
          Expanded(child: Container()),
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmTransfer(),),);
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
                    'NEXT',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}