import 'dart:convert';

import 'package:flutter/material.dart';

 var pic="https://source.unsplash.com/random";

int count=0;


newpic(){
 
  return Image.network(pic, fit: BoxFit.cover,);
}

clickImage(){
pic="https://source.unsplash.com/random/$count";
count++;
}


//https://app.pixelencounter.com/api/basic/monsters/random

//https://source.unsplash.com/random