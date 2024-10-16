import 'package:counter_provider1/counterprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreenExample extends StatefulWidget {

  @override
  _counterscreenexampleState createState()=> _counterscreenexampleState();

}
class _counterscreenexampleState extends  State<CounterScreenExample>{

  @override
  Widget build(BuildContext context) {
    final counterprovider = Provider.of<Counterprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("conter app with provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("you have pushed the button this many times"),
            Text("${counterprovider.count}"),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: counterprovider.increment,
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: counterprovider.decrement,
            child: Icon(Icons.remove),
          ),
            
        ],
      ));
  

  }
  
  }
