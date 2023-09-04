import 'package:flutter/material.dart';
import 'package:onboarding_overlay/onboarding_overlay.dart';

void main() {
  runApp(const MyApp());
}

final List<FocusNode> overlayKeys = <FocusNode>[
  FocusNode(),
  FocusNode(),
  FocusNode(),
];

final List<OnboardingStep> steps = [
  OnboardingStep(
    focusNode: overlayKeys[0],
    hasLabelBox: false,
    fullscreen: true,
    hasArrow: false,
    titleText: 'MyTitleText1',
    stepBuilder: (builder,option){
      return GestureDetector(
        child: Scaffold(
          body: Container(
            child: Center(
              child:Text("설명"),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          
        ),
      );
    },
  ),
  OnboardingStep(
    focusNode: overlayKeys[1],
    hasLabelBox: false,
    fullscreen: true,
    hasArrow: false,
    titleText: 'MyTitleText2',
  ),
  OnboardingStep(
    focusNode: overlayKeys[2],
    hasLabelBox: false,
    fullscreen: true,
    hasArrow: false,
    titleText: 'MyTitleText3',

  ),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Onboarding(
          steps: steps,
          child: const MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) {
      Onboarding.of(context)!.show();
    });
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Focus(
              focusNode: overlayKeys[0],
              child: const Text(
                'You have pushed the button this many times:',
              ),
            ),
            Focus(
              focusNode: overlayKeys[1],
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Focus(
        focusNode: overlayKeys[2],
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
