import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main_provider.dart';

class MainPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  late MainProvider provider;
  
  @override
  void initState() {
    provider = ref.read(mainProvider);
    provider.getWeather("20230726", 1, 57, 71);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final index = ref.watch(mainIndexProvider);
    final weatherList = ref.watch(weatherModelListeProvider);
    final scrollEnd = ref.watch(mainPageScrollEndProvider);
    bool isMoreResult = true;
    return Scaffold(
      appBar: AppBar(title: Text("날씨 Api")),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification){
          if(notification.metrics.atEdge){
            if(notification.metrics.pixels != 0) {
              if (!scrollEnd) {
                print("get Result - atEdge");
                if(isMoreResult){
                  provider.addPageIndex();
                  provider.getWeather("20230726", index, 57, 71);
                  print(index);
                  if (index==24) {
                    isMoreResult=false;
                  }
                }
                provider.setScrollEnd(true);
              }
            }
          }else if(notification.metrics.outOfRange){
            if(notification.metrics.pixels > 0){
              if (!scrollEnd) {
                print("get Result - pixel");
                if(isMoreResult){

                }
                provider.setScrollEnd(true);
              }
            }
          } else{
            if(scrollEnd){
              provider.setScrollEnd(false);
            }
          }
          return false;
        },
        child: ListView(
          children: [

            Container(height: 1000,),
            ...weatherList.map((e) => Column(
          children: [
            Text("baseTime : " + e.baseTime),
            Text("category : " + e.category),
            Text("obsrValue : " + e.obsrValue),
            Divider(height: 3,color: Colors.white,)
          ],
    )),
          ],
        ),
      )
    );
  }
}
