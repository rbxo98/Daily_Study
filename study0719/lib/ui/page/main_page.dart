
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study0719/logic/request_hello.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});
  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Center(
        child:ElevatedButton(onPressed: ()=>getNextpage(context), child: Text("통신"),),
      ),
      ),
    );
  }
}
