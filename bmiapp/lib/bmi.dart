import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  double _result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'น้ำหนัก (kg.)',
                icon: Icon(Icons.line_weight),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'ส่วนสูง (cm)',
                icon: Icon(Icons.trending_up),
              ),
            ),
            SizedBox(height: 20),
            // ignore: deprecated_member_use
            //RaisedButton(onPressed: onPressed)
            ElevatedButton(
              onPressed: calBMI,
              child: Text(
                'คำนวน',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 15),
            Text(
              _result == null ? 'กรอกข้อมูล' : '${_result.toStringAsFixed(2)}',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void calBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);
    double result = weight / (height * height);
    setState(() {
      _result = result;
    });
  }
}
