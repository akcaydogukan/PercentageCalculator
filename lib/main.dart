import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Uygulamanın başlığı
      title: 'Mirayın Hesap Makinesi',
      // Uygulamanın ana sayfası
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double number = 0;
  double percentage = 0;
  double percentValue = 0;

  void calculatePercentage() {
    percentage = number * percentValue / 100;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mirayın Hesap Makinesi <3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Lütfen bir sayı ve yüzdesini gir aşkım',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Sayı',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                number = double.parse(value);
              },
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Yüzde',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                percentValue = double.parse(value);
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculatePercentage();
              },
              child: Text('Hesapla'),
            ),
            SizedBox(height: 20),
            Text(
              'Sonuç:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              '$percentage',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}