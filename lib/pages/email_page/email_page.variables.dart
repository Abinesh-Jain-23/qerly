import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qerly/services/api.dart';

mixin EmailPageVariables {
  Api api = Api();
  TextEditingController textEditingController = TextEditingController();
  RxString email = ''.obs;
}
