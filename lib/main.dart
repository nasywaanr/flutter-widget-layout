import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// StatelessWidget untuk menampilkan teks statis
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Ini adalah Stateless Widget',
      style: TextStyle(fontSize: 20),
    );
  }
}

// StatefulWidget untuk menampilkan counter yang bisa diubah
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Anda telah menekan tombol sebanyak:'),
        Text(
          '$_counter kali',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Tambah'),
        ),
      ],
    );
  }
}

// Widget utama aplikasi yang menggunakan Column, Row, dan Stack
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget & Layout Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Column untuk menyusun widget secara vertikal
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Ini adalah widget pertama'),
                  Text('Ini adalah widget kedua'),
                  Text('Ini adalah widget ketiga'),
                ],
              ),
              SizedBox(height: 20),

              // Menggunakan Row untuk menyusun widget secara horizontal
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.star, size: 50, color: Colors.yellow),
                  Icon(Icons.star_half, size: 50, color: const Color.fromARGB(255, 115, 255, 0)),
                  Icon(Icons.star_border, size: 50, color: Colors.grey),
                ],
              ),
              SizedBox(height: 20),

              // Menggunakan Stack untuk menumpuk widget
              Stack(
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    color: const Color.fromARGB(255, 29, 91, 15),
                  ),
                  Positioned(
                    top: 50,
                    left: 50,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: const Color.fromARGB(255, 111, 124, 22),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Menggunakan Row dengan Expanded
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.grey.shade400,
                      child: Center(
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.brown.shade300,
                    child: Center(
                     
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Menggunakan Row dengan Flexible
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Container(
                      height: 100,
                      color: Colors.blue.shade700,
                      child: Center(
                         
                        
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                      child: Center(
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}