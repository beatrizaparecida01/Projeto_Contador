import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement(){ print('decrement');}
  void increment(){ print('increment');}

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Column(
        children: [
          Text("Pode Entrar",
          style: TextStyle(
            fontSize: 26,
            color: Color.fromARGB(255, 4, 87, 154),
            fontWeight: FontWeight.w700
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: decrement,
              child: Text('Sair'),),
              TextButton(onPressed: increment, child: Text('Entrar'),),
            ],
          )
        ],
      ),
    );
  }
}

  @override
  Widget build(BuildContext context)
{
  return const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Text('Hello World!'),
      ),
    ),
  );
}