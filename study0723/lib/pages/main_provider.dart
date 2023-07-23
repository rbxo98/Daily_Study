import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final location = [
  {'lat': 35.021822660789994, 'lng': 126.79032257335982,'name':"빛가람동 행정복지센터"},
  {'lat': 35.026612321851424, 'lng': 126.78451364393183,'name':"한국 전력공사 본사"},
  {'lat': 35.01852759657105, 'lng': 126.79529440068673,'name':"한국 인터넷 진흥원"},
];

final markerIndexProvider = StateProvider<int>((ref) => 0);
final selectMarkerProvider = StateProvider<Marker>((ref) => Marker(markerId: MarkerId("")));
final markerProvider = Provider<MarkerProvider>((ref)=>MarkerProvider(ref: ref));

class MarkerProvider {
  final ProviderRef ref;

  MarkerProvider({required this.ref});

  void setNextMarker(){
    ref.read(markerIndexProvider.notifier).state++;
    if (ref.read(markerIndexProvider.notifier).state == location.length) ref.read(markerIndexProvider.notifier).state=0;
    print(ref.read(markerIndexProvider.notifier).state);
    final data=location[ref.read(markerIndexProvider.notifier).state];
    ref.read(selectMarkerProvider.notifier).state=Marker(
        markerId: MarkerId(data['name'] as String,),
      position: LatLng(data['lat'] as double, data['lng'] as double),
    );
  }
}
