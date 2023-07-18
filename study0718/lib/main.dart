import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp( ProviderScope(child: MyApp()) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>_MyHomePageState();
}

final provider_normal = Provider<int>((ref) => 0);
final provider_state =  StateProvider<int>((ref) => 0);
class ProviderStateNotifier extends StateNotifier<int>{
  ProviderStateNotifier() : super(0);
  void increase(){
    state++;
  }
  void decrease(){
    state--;
  }
}


final provider_sn = StateNotifierProvider<ProviderStateNotifier,int>((ref) => ProviderStateNotifier());
class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final idx_normal = ref.read(provider_normal);
    final idx_state = ref.watch(provider_state);
    final idx_sn = ref.listen(provider_sn,(preval,newval){print("preval: "+preval.toString()+", newval: " + newval.toString());});
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("idx normal: " + idx_normal.toString()),
            Text("idx state: " + idx_state.toString()),
            ElevatedButton(onPressed: (){
              ref.read(provider_state.notifier).state++;
              ref.read(provider_sn.notifier).state++;
              ref.read(provider_sn.notifier).increase();
              }, child: Text("+")),
          ],),
        ),
      ),
    );
  }

}
