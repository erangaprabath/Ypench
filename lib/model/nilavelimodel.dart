import 'dart:convert';
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class Hotelnila {
  String? owner;
  String? name;
  String? ImageUrl;
  String? address;
  String? days;
  String? price;
  String? contact;
  String? rooms;
  String? rating;
  String? locationUrl;

  Hotelnila(this.owner, this.name, this.ImageUrl, this.address, this.days,
      this.price, this.rooms, this.rating, this.contact, this.locationUrl);
}

class servicedatanilaveli {
  List<Hotelnila> hotelnilaa = [];

  Future<List<Hotelnila>> get() async {
    final currentUser = FirebaseFirestore.instance.collection("Nilaweli");

    await currentUser.get().then((value) {
      hotelnilaa = [];
      value.docs.forEach((element) {
        hotelnilaa.add(Hotelnila(
            element.data()['owner'],
            element.data()['name'],
            element.data()['img'],
            element.data()['address'],
            element.data()['days'],
            element.data()['price'],
            element.data()['rooms'],
            element.data()['rating'],
            element.data()['contact'],
            element.data()['locationUrl']));
      });
    });

    return hotelnilaa;
  }
}
