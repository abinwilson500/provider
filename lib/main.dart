import 'package:counter_provider1/counter_screen.dart';
import 'package:counter_provider1/counterprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> Counterprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterScreenExample(),
      ),
    );
    
  }
}
