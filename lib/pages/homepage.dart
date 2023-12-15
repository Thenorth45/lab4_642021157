import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String Foodsradio = "";
  bool staregg = false;
  bool horseegg = false;
  bool pig = false;
  bool omelet = false;
  bool homok = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Input Widget",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 108, 211, 68),
          ),
        ),
        elevation: 10,
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(255, 10, 82, 4),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          RadioList("ก๋วยเตี๋ยว", "60 บาท"),
          RadioList("ข้าว", "50 บาท"),
          RadioList("ผลไม้", "10 บาท"),
          RadioList("น้ำ", "7 บาท"),
          RadioList("ขนม", "5 บาท"),
          Divider(),
          CheckboxListTile(
            value: staregg,
            title: Text("ไข่ดาว"),
            subtitle: Text("10 บาท"),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState(() {
                staregg = value!;
              });
            },
          ),
          CheckboxListTile(
            value: horseegg,
            title: Text("ไข่เยี่ยวม้า"),
            subtitle: Text("10 บาท"),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState(() {
                horseegg = value!;
              });
            },
          ),
          CheckboxListTile(
            value: pig,
            title: Text("หมูกรอบ"),
            subtitle: Text("20 บาท"),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState(() {
                pig = value!;
              });
            },
          ),
          CheckboxListTile(
            value: omelet,
            title: Text("ไข่เจียว"),
            subtitle: Text("10 บาท"),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState(() {
                omelet = value!;
              });
            },
          ),
          CheckboxListTile(
            value: homok,
            title: Text("ห่อหมก"),
            subtitle: Text("20 บาท"),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value) {
              setState(() {
                homok = value!;
              });
            },
          ),
        ]),
      ),
    );
  }

  RadioListTile<String> RadioList(String title, String subtitle) {
    return RadioListTile(
      activeColor: Color.fromARGB(255, 247, 3, 3),
      title: Text(title),
      subtitle: Text(subtitle),
      value: title,
      groupValue: Foodsradio,
      onChanged: (value) {
        setState(() {
          Foodsradio = value!;
        });
      },
    );
  }
}
