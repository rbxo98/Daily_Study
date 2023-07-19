import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:study0719/ui/page/second_page.dart';

void getNextpage(BuildContext context) async {
  final respone = await http.get(Uri.parse(dotenv.get('URL')+"Hello"));
  if (jsonDecode(respone.body)['request']=="ok") {
    Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>SecondPage()));
  }
}