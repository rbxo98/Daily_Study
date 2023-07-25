import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:study0725/main_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProviderScope(
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyHomePageState();
}

DateTime today = DateTime.now();
DateTime tomorrow=DateTime(today.year,today.month,today.day+1);
final nowPickedDateProvider = StateProvider<List<DateTime?>>((ref)=>[today,tomorrow]);
final finalPickedDateProvider = StateProvider<List<DateTime?>>((ref)=>[]);
final textEditingControllerProvider = StateProvider<TextEditingController>((ref) => TextEditingController());


class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final nowPickedDate = ref.watch(nowPickedDateProvider);
    final finalPickedDate = ref.watch(finalPickedDateProvider);
    final _controller = ref.watch(textEditingControllerProvider);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Column(
            children: [
              CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.range
                ),
                value: nowPickedDate,
                onValueChanged: (value){ref.read(nowPickedDateProvider.notifier).state=value;print(1);},
              ),
              TextButton(
                  onPressed: () {
                    try {
                      if (nowPickedDate.length==2){
                        ref.read(finalPickedDateProvider.notifier).state =
                            nowPickedDate;
                        ref
                            .read(textEditingControllerProvider.notifier)
                            .state
                            .text = DateFormat("yyyy.MM.dd")
                            .format(nowPickedDate[0]!) +
                            " ~ " +
                            DateFormat("yyyy.MM.dd").format(nowPickedDate[1]!);
                        print(finalPickedDate);
                      }
                      else{
                        //some code
                      }
                    } catch (e) {
                      print(e.toString());
                    }
                  },
                  child: Text("OK")),
              TextField(
                controller: _controller,
                readOnly: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
