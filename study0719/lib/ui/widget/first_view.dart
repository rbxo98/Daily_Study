import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FirstView extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      child: Text("첫 번째",style: TextStyle(fontSize: 30),),
    );
  }
}