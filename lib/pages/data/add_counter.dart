import 'package:flutter/material.dart';

class AddCounter {
  int count = 0;
  void increment(){
    count++;
  }
  AddCounter._() {}
  static final instance = AddCounter._();
}
