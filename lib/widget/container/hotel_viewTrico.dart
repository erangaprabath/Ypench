import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/adamsPeek.dart';
import 'package:flutter_application_1/model/ellaModel.dart';
import 'package:flutter_application_1/model/tricomaleeModel.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:url_launcher/url_launcher.dart';

class hotelViewTrinco extends StatefulWidget {
  hotelViewTrinco({Key? key, required this.hoteltrico}) : super(key: key);
  final HotelTrinco hoteltrico;

  @override
  State<hotelViewTrinco> createState() => _hotelViewTrincoState();
}

class _hotelViewTrincoState extends State<hotelViewTrinco> {
  @override
  Widget build(BuildContext context) {
    test testcall = test();

    String? rating = widget.hoteltrico.rating;
    String? number = widget.hoteltrico.contact;
    String? locationUrl = widget.hoteltrico.locationUrl;
    print(number);
    double result = double.parse(rating!);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              height: 220,
              padding: EdgeInsets.all(10),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.hoteltrico.ImageUrl ?? '',
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.error);
                    },
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(22, 0, 0, 0).withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(5, 5), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromARGB(255, 0, 145, 255)),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          '${widget.hoteltrico.name}',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              wordSpacing: 0,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                            onTap: () {
                              testcall.loaction(locationUrl!);
                            },
                            child: Icon(
                              Icons.place,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    Text(
                      '${widget.hoteltrico.address}',
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          wordSpacing: 0,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            5,
                            (index) => Icon(
                              index < result! ? Icons.star : Icons.star_border,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '(${widget.hoteltrico.rating})',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              wordSpacing: 0,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Days",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  wordSpacing: 0,
                                  color: Colors.white),
                            ),
                            Text(
                              '${widget.hoteltrico.days}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  wordSpacing: 0,
                                  color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                          child: VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Availble Rooms",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  wordSpacing: 0,
                                  color: Colors.white),
                            ),
                            Text(
                              '${widget.hoteltrico.rooms}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  wordSpacing: 0,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                          child: VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  wordSpacing: 0,
                                  color: Colors.white),
                            ),
                            Text(
                              'RS:${widget.hoteltrico.price}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                  wordSpacing: 0,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          alignment: Alignment.center,
                          child: ButtonTheme(
                            child: MaterialButton(
                              onPressed: () => testcall.message(number!),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.message,
                                    size: 15,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Message',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              color: Color.fromARGB(255, 0, 0, 0),
                              shape: StadiumBorder(),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 100,
                          alignment: Alignment.center,
                          child: ButtonTheme(
                            child: MaterialButton(
                              onPressed: () =>
                                  testcall._launchPhoneDialer(number!),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.call,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Call',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              color: Color.fromARGB(255, 0, 0, 0),
                              shape: StadiumBorder(),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 200,
                          alignment: Alignment.center,
                          child: ButtonTheme(
                            child: MaterialButton(
                              onPressed: (() {
                                purshase();
                              }),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.hotel,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Purchase',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              color: Color.fromARGB(255, 25, 0, 255),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(22, 0, 0, 0).withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(5, 5), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromARGB(255, 0, 145, 255)),
            ),
          ),
        ],
      ),
    );
  }

  purshase() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          padding: EdgeInsets.all(16),
          height: 90,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 0, 0),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "We Are Sorry!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "For the booking please call or message the hotel",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}

class test {
  _launchPhoneDialer(String phoneNumber) async {
    final phoneUrl = 'tel:$phoneNumber';
    if (await canLaunch(phoneUrl)) {
      await launch(phoneUrl);
    } else {
      throw 'Could not launch phone';
    }
  }

  message(String phoneNumber) async {
    final phoneUrl = 'sms:$phoneNumber';
    if (await canLaunch(phoneUrl)) {
      await launch(phoneUrl);
    } else {
      throw 'Could not launch phone';
    }
  }

  loaction(String locationUrl) async {
    final place = '$locationUrl';
    if (await canLaunch(place)) {
      await launch(place);
    } else {
      throw 'Could not launch phone';
    }
  }
}