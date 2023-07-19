import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:study0719/app/config/config.dart';
import 'package:study0719/ui/page/second_page.dart';

void getNextpage(BuildContext context) async {
  final respone = await http.get(Uri.parse(UrlPath.addParam("Hello")));
  if (jsonDecode(respone.body)['request']=="ok") {
    Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>SecondPage()));
  }
}