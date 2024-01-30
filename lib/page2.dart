
import 'package:flutter/material.dart';

import 'package:simple_registration/style.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String? _phone;
  bool isActive = false;
  void _active() {
    if (_phone != null) {}
    if (_phone!.isEmpty) {
      isActive = false;
    } else {
      isActive = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Column(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFEBEBEB),
                  radius: 16,
                  child: Text('1'),
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 16,
                  child: Text('2'),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xFFEBEBEB),
                  radius: 16,
                  child: Text('3'),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Подтверждение', style: apptextstyle.styleApp1),          
          SizedBox(height: 10),
          Text(
            'Введите код, который мы отправили в SMS на +7(966) 666 66 66',
            style: apptextstyle.styleApp2),
        
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
               
                SizedBox(height: 100),
                
                 Text('60 сек до повтора отправки кода'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
