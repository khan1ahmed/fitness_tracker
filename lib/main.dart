// import 'package:firebase_core/firebase_core.dart';
// import 'package:fitness_tracker/Screens/Signinscreen.dart';
// import 'package:fitness_tracker/firebase_options.dart';
// import 'package:flutter/material.dart';

// void main()async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//     @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//     home: MyApp(),
//     //  home:  HomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     );
//   }
// }


import 'package:fitness_tracker/Screens/Signinscreen.dart';
import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StepCounter(),
    );
  }
}

class StepCounter extends StatefulWidget {
  @override
  _StepCounterState createState() => _StepCounterState();
}

class _StepCounterState extends State<StepCounter> {
  int stepCount = 0;
  bool isPeak = false;

  @override
  void initState() {
    super.initState();
    accelerometerEvents.listen((AccelerometerEvent event) {
      detectStep(event);
    });
  }

  void detectStep(AccelerometerEvent event) {
    double magnitude = event.x * event.x + event.y * event.y + event.z * event.z;

    if (magnitude > 15.0) {
      isPeak = true;
    }

    if (isPeak && magnitude < 11.0) {
      setState(() {
        stepCount++;
        isPeak = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pedometer Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Steps Taken',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                _steps,
                style: TextStyle(fontSize: 60),
              ),
              Divider(
                height: 100,
                thickness: 0,
                color: Colors.white,
              ),
              Text(
                'Pedestrian Status',
                style: TextStyle(fontSize: 30),
              ),
              Icon(
                _status == 'walking'
                    ? Icons.directions_walk
                    : _status == 'stopped'
                        ? Icons.accessibility_new
                        : Icons.error,
                size: 100,
              ),
              Center(
                child: Text(
                  _status,
                  style: _status == 'walking' || _status == 'stopped'
                      ? TextStyle(fontSize: 30)
                      : TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
              //extra for next page from me.asfand
              ElevatedButton(onPressed: (){ Navigator.push(context,
      MaterialPageRoute(builder: (context)=>Signinscreen()));}, child: Text('data')),
            ],
          ),
        ),
      ),
    );
  }
}
