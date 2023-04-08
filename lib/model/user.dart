import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class Hotel {
  String? owner;
  String? hotelName;
  String? url;

  Hotel(this.owner, this.hotelName, this.url);
}

class servicedata {
  List<Hotel> hotel = [];
  Future<List<Hotel>> get() async {
    final currentUser = FirebaseFirestore.instance.collection('Galle');

    await currentUser.get().then((value) {
      hotel = [];
      value.docs.forEach((element) {
        hotel.add(Hotel(element.data()['owner'], element.data()['hotelName'],
            element.data()['url']));
      });

      print(hotel.length);
      print(hotel.first.owner);
    });

    return hotel;
  }
}
