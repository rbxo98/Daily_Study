import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logic/provider.dart';
import '../widget/first_view.dart';
import '../widget/second_view.dart';
import '../widget/third_view.dart';

class SecondPage extends ConsumerStatefulWidget {
  const SecondPage({super.key});
  @override
  ConsumerState<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends ConsumerState<SecondPage> {

  List<ConsumerWidget> viewList = [FirstView(),SecondView(),ThirdView(),];
  @override
  Widget build(BuildContext context) {
    final nowView = ref.watch(secondPageProvider);
    return Scaffold(
      body: Container(
        child: Center(
          child:nowView,
        ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home_outlined),label: ""),
          BottomNavigationBarItem(icon:Icon(Icons.search_rounded),label: ""),
          BottomNavigationBarItem(icon:Icon(Icons.add_a_photo_outlined),label: ""),
        ],
        onTap:(index){ref.watch(secondPageProvider.notifier).state=viewList[index];},
      ),
    );
  }
}



