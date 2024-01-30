import 'package:flutter/material.dart';
import 'package:simple_registration/page2.dart';
import 'package:simple_registration/style.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
                  backgroundColor: Colors.yellow,
                  radius: 16,
                  child: Text('1'),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xFFEBEBEB),
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
            'Регистрация',
            style: apptextstyle.styleApp1,
          ),
          SizedBox(height: 10),
          Text(
            'Введите номер телефона для регистрации',
            style: apptextstyle.styleApp2,
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Номер телефона',
                        hintText: '+7'),
                    onChanged: (phone) {
                      _phone = phone;
                      _active();
                    }),
                SizedBox(height: 100),
                ElevatedButton(
                    style: ButtonStyle(backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      return _phone.toString() == '+7700707070'
                          ? Colors.yellow
                          : Colors.white;
                    })),
                    onPressed: isActive
                        ? () {
                            if (_phone.toString() == '+7700707070') {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Page2()));
                            }
                            ;
                          }
                        : null,
                    child: Text('Отправить смс-код')),
                Text(
                    'Нажимая на данную кнопку, вы даете согласие на обработку '),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
