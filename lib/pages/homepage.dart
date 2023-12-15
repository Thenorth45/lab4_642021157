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
          RadioListTile(
            activeColor: Color.fromARGB(255, 247, 3, 3),
            title: Text("ก๋วยเตี๋ยว"),
            subtitle: Text("60 บาท"),
            value: "Noodle",
            groupValue: Foodsradio,
            onChanged: (value) {
              setState(() {
                Foodsradio = value!;
              });
            },
          ),
          RadioListTile(
            activeColor: Color.fromARGB(255, 227, 3, 247),
            title: Text("ข้าว"),
            subtitle: Text("50 บาท"),
            value: "Rice",
            groupValue: Foodsradio,
            onChanged: (value) {
              setState(() {
                Foodsradio = value!;
              });
            },
          ),
          RadioListTile(
            activeColor: Color.fromARGB(255, 3, 40, 247),
            title: Text("ผลไม้"),
            subtitle: Text("10 บาท"),
            value: "Fruit",
            groupValue: Foodsradio,
            onChanged: (value) {
              setState(() {
                Foodsradio = value!;
              });
            },
          ),
          RadioListTile(
            activeColor: Color.fromARGB(255, 3, 247, 227),
            title: Text("น้ำ"),
            subtitle: Text("7 บาท"),
            value: "Water",
            groupValue: Foodsradio,
            onChanged: (value) {
              setState(() {
                Foodsradio = value!;
              });
            },
          ),
          RadioListTile(
            activeColor: Color.fromARGB(255, 23, 247, 3),
            title: Text("ขนม"),
            subtitle: Text("5 บาท"),
            value: "Snack",
            groupValue: Foodsradio,
            onChanged: (value) {
              setState(() {
                Foodsradio = value!;
              });
            },
          ),
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

  RadioListTile<String> RadioList() {
    return RadioListTile(
      activeColor: Color.fromARGB(255, 247, 3, 3),
      title: Text("ก๋วยเตี๋ยว"),
      subtitle: Text("60 บาท"),
      value: "Noodle",
      groupValue: Foodsradio,
      onChanged: (value) {
        setState(() {
          Foodsradio = value!;
        });
      },
    );
  }
}
