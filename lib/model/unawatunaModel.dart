import 'dart:convert';
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class HotelUnawa {
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

  HotelUnawa(this.owner, this.name, this.ImageUrl, this.address, this.days,
      this.price, this.rooms, this.rating, this.contact, this.locationUrl);
}

class servicedataunawatuna {
  List<HotelUnawa> hotelunwa = [];

  Future<List<HotelUnawa>> get() async {
    final currentUser = FirebaseFirestore.instance.collection("Unawatuna");

    await currentUser.get().then((value) {
      hotelunwa = [];
      value.docs.forEach((element) {
        hotelunwa.add(HotelUnawa(
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

    return hotelunwa;
  }
}