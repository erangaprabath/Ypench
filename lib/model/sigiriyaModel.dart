import 'package:cloud_firestore/cloud_firestore.dart';

class Hotelsigiriya {
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

  Hotelsigiriya(this.owner, this.name, this.ImageUrl, this.address, this.days,
      this.price, this.rooms, this.rating, this.contact, this.locationUrl);
}

class users {
  String? username;

  users(this.username);
}

class servicedataSg {
  List<Hotelsigiriya> hotelSG = [];

  Future<List<Hotelsigiriya>> get() async {
    final currentUser = FirebaseFirestore.instance.collection('Sigiriya');

    await currentUser.get().then((value) {
      hotelSG = [];
      value.docs.forEach((element) {
        hotelSG.add(Hotelsigiriya(
            element.data()['owner'],
            element.data()['name'],
            element.data()['ImageUrl'],
            element.data()['address'],
            element.data()['days'],
            element.data()['price'],
            element.data()['rooms'],
            element.data()['rating'],
            element.data()['contact'],
            element.data()['locationUrl']));
      });

      print(hotelSG.length);
      print(hotelSG.first.owner);
      print(hotelSG.first.days);
      print(hotelSG.first.contact);
    });

    return hotelSG;
  }
}
