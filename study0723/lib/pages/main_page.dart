import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:study0723/pages/main_provider.dart';

class MainPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPageState();
}


class _MainPageState extends ConsumerState<MainPage> {
  late MarkerProvider provider;
  @override
  void initState() {
    provider=ref.read(markerProvider);
  }

  @override
  Widget build(BuildContext context) {

    final marker = ref.watch(selectMarkerProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map Test"),
      ),
      body: Stack(
        children: [
          GoogleMap(
            markers:{marker},
              initialCameraPosition: CameraPosition(
                  zoom: 16, target: LatLng(35.021822660789994, 126.79032257335982))),
          Align(alignment: Alignment.bottomCenter, child: ElevatedButton(onPressed: (){
            provider.setNextMarker();
          }, child: Text("마커"))),
        ],
      ),
    );
  }
}
