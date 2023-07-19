import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../ui/widget/first_view.dart';

final secondPageProvider = StateProvider<ConsumerWidget>((ref)=>FirstView());
