import 'dart:convert';
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class ellaCar {
  String? contact;
  String? name;
  String? vehicale;
  String? vehicaleNo;

  ellaCar(this.contact, this.name, this.vehicale, this.vehicaleNo);
}
