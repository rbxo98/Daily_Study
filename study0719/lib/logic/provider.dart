import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:study0719/model/flask_model.dart';


import '../ui/widget/first_view.dart';


final secondPageProvider = StateProvider<ConsumerWidget>((ref)=>FirstView());
