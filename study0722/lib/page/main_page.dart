import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study0722/page/main_provider.dart';

class MainPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  TextEditingController dateController = TextEditingController();
  TextEditingController nxController = TextEditingController();
  TextEditingController nyController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<int> getItems() {
    List<int> items = [];
    for (int i = 0; i < 24; i++) {
      items.add(i);
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(dropDownItemIndex);
    final weatherList = ref.watch(WeatherModelListeProvider);
    return Scaffold(
      appBar: AppBar(title: Text("날씨 Api")),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Divider(
                  thickness: 3,
                  color: Colors.white,
                ),
                Text("날짜 입력 (최근 1년 이내)"),
                TextField(
                  controller: dateController,
                  maxLength: 8,
                  decoration: InputDecoration(hintText: "yyyymmdd"),
                ),
                Divider(
                  thickness: 3,
                  color: Colors.white,
                ),
                Text("시간대"),
                DropdownButton<int>(
                  value: selectedIndex,
                    items: getItems().map((e) {
                      return DropdownMenuItem<int>(
                        child: Text(e.toString() + " 시"),
                        value: e,
                      );
                    }).toList(),
                    onChanged: (index) {
                      ref.watch(dropDownItemIndex.notifier).state = index!;
                    }),
                Divider(
                  thickness: 3,
                  color: Colors.white,
                ),
                Text("X좌표"),
                TextField(
                  controller: nxController,
                ),
                Divider(
                  thickness: 3,
                  color: Colors.white,
                ),
                Text("Y좌표"),
                TextField(
                  controller: nyController,
                ),
                Divider(
                  thickness: 5,
                  color: Colors.white,
                ),
                Align(
                    alignment: Alignment.center,
                    child:
                        ElevatedButton(onPressed: () async {
                          ref.watch(WeatherModelListeProvider.notifier).state=
                          await getWeather(dateController.text, ref.read(dropDownItemIndex), int.parse(nxController.text) , int.parse(nyController.text));
                        }, child: Text("날씨 확인")))
              ] + ( (weatherList.length > 0) ? [
                Column(children: [
                  Text(weatherList[0].baseDate),
                  Text(weatherList[0].baseTime),
                  Text(weatherList[0].category),
                  Text(weatherList[0].obsrValue),
                ],)
          ] : []) ,
        ),
      ),
    );
  }
}
