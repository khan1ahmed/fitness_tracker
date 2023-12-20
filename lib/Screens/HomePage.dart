// import 'package:flutter/material.dart';
// import 'package:pedometer/pedometer.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: StepCounter(),
//     );
//   }
// }

// class StepCounter extends StatefulWidget {
//   @override
//   _StepCounterState createState() => _StepCounterState();
// }

// class _StepCounterState extends State<StepCounter> {
//   int stepCount = 0;

//   @override
//   void initState() {
//     super.initState();
//     _startListening();
//   }

//   void _startListening() {
//     Pedometer pedometer = Pedometer();
//     pedometer.pedometerStream.listen((PedometerEvent event) {
//       setState(() {
//         stepCount = event.steps;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Step Counter App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Step Count: $stepCount',
//               style: TextStyle(fontSize: 24),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // This is just a placeholder. In a real app, you'd use sensor data.
//                 setState(() {
//                   stepCount++;
//                 });
//               },
//               child: Text('Increment Step'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


