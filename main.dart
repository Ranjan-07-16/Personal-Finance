import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Switch',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatefulWidget{
  const MyAppPage({super.key});

  @override
  State<MyAppPage> createState() => _MyAppHomePage();
  }

class _MyAppHomePage extends State<MyAppPage>{
  String _s="Off";
  void _on()
  {
    setState((){
      _s="On";
    });
  }
  void _off()
  {
    setState((){
      _s="Off";
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch"),
      ),
      body: Center(
        child: Text('$_s', style: const TextStyle(fontSize: 50)),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children:[
          FloatingActionButton(
            onPressed:_on,
            child: const Text("Turn On"),
          ),
          const SizedBox(width:16),
          FloatingActionButton(
            onPressed:_off,
            child: const Text("Turn Off"),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Simple Counter',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: const CounterPage(),
//     );
//   }
// }
  
// class CounterPage extends StatefulWidget{
//   const CounterPage({super.key});
//   @override
//   State<CounterPage> createState() => _CounterPageState(); 
// }

// class _CounterPageState extends State<CounterPage> {
//   int _count = 0;
//   void _increment()
//   {
//     setState(() {
//       _count+=1;
//     });
//   }
//   void _decrement()
//   {
//     setState(() {
//       _count-=1;
//     });
//   }
  
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Simple Counter App"),
//       ),
      
//       body: Center(
//         child: Text(
//           '$_count',
//           style:const TextStyle(fontSize: 50),
//         ),
//       ),
      
//       floatingActionButton: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           FloatingActionButton(
//             onPressed: _increment,
//             child: const Icon(Icons.add),
//           ),
//           const SizedBox(width:16),
//           FloatingActionButton(
//             onPressed: _decrement,
//             child: const Icon(Icons.remove),
//           )
//         ],
//       ),
//     );
//   }
// }
