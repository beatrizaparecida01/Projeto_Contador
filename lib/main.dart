import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void decrement() {
    print('decrement');
  }

  void increment() {
    print('increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/cidade.jpg'),
          fit: BoxFit.cover,
          ),
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pode entrar",
            style: TextStyle(
                fontSize: 26,
                color: Color.fromARGB(255, 4, 87, 154),
                fontWeight: FontWeight.w700
                ),
          ),
          Text(
            "0",
            style: TextStyle(
                fontSize: 26,
                color: Color.fromARGB(255, 4, 87, 154),
                fontWeight: FontWeight.w700),
          ),

            const Padding(padding: EdgeInsets.all(40),
            child: Text('0',
              style: TextStyle(
                fontSize: 100,
                color: Color.fromARGB(255, 4, 87, 154),
              ),
            ),
            ),   

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: const Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  'Sair',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                width: 32,
              ),
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: const Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      )
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}