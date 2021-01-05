import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

/******* Balance in crypto ***********/

String BTC = '0.0009';
String ETH = '0.0009';
String LTC = '0.0009'; // LTC holds Tether values

/**************** Balance in local currency ************************/

String L_BTC = '\$1200.0';
String L_ETH = '\$1200.0';
String L_LTC = '\$1200.0';
String Local_Currency = '\$1200.0';

/*********************Wallet addresses***************************/

String A_BTC = '4234hfd34573dj35t7ou5kigu435to45';
String A_ETH = '4234hfd34573dj35t7ou5kigu435to45';
String A_TETHER = '4234hfd34573dj35t7ou5kigu435to45';

/************************Profile Data*****************************/

String NAME;
String MoBILE_NUMBER;
String EMAIL;
String PASSWORD;
String CONFIRM_PASSWORD;
String VERIFICATION;

/******************TRANSACTION DATA******************************/

Future<http.Response> createSignup_Data(String name, String mobile_number,
    String email, String password, String confirm_password) {
  return http.post(
    'https://aqueous-brook-04060.herokuapp.com',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name': name,
      'mobile_number': mobile_number,
      'email': email,
      'password': password,
      'confirm_password': confirm_password,
    }),
  );
}
