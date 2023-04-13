import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/kuckelsModel.dart';
import 'package:flutter_application_1/model/sigiriyaModel.dart';
import 'package:flutter_application_1/screens/hiking.dart';
import 'package:flutter_application_1/widget/container/hotel_viewSG.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../widget/container/hotel_viewKn.dart';

class sigiriyaInside extends StatefulWidget {
  const sigiriyaInside({Key? key}) : super(key: key);

  @override
  _sigiriyaInsideState createState() => _sigiriyaInsideState();
}

class _sigiriyaInsideState extends State<sigiriyaInside> {
  servicedataSg hotelkSG = servicedataSg();
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 50.0,
                      color: Color.fromARGB(71, 0, 0, 0),
                      spreadRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://www.atlasandboots.com/wp-content/uploads/2017/03/Sigiriya-Rock-Fortress-1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(1, 45, 0, 0),
                          child: Container(
                            alignment: Alignment.center,
                            child: IconButton(
                                onPressed: (() {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (_) {
                                    return hikingPage();
                                  }));
                                }),
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                )),
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(92, 255, 255, 255),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(75, 255, 255, 255)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.photo_library_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromARGB(92, 255, 255, 255),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromARGB(75, 255, 255, 255)),
                                child: Text(
                                  '$rating',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          'Sigiriya Rock Fortress',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Your Experience',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(0, 135, 201, 146)),
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color.fromARGB(0, 253, 253, 253)),
                        child: RatingBar.builder(
                          initialRating: rating,
                          itemSize: 25,
                          minRating: 1,
                          updateOnDrag: true,
                          onRatingUpdate: (rating) => setState(() {
                            this.rating = rating;
                          }),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  child: const Center(
                    child: Text(
                      "The Knuckles Mountain Range lies in central Sri Lanka, in the Districts of Matale and Kandy. The range takes its name from a series of recumbent folds and peaks in the west of the massif which resemble the knuckles of clenched fist when viewed from certain locations in the Kandy District. Whilst this name was assigned by early British surveyors, the Sinhalese residents have traditionally referred to the area as Dumbara Kanduvetiya meaning Mist-laden Mountain Range.",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "Top Hotels And Resorts",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FutureBuilder(
                future: hotelkSG.get(),
                builder:
                    ((context, AsyncSnapshot<List<Hotelsigiriya>> snapshot) {
                  if (snapshot.hasData) {
                    print('----->');
                    print(snapshot.data?.first.name);
                    List<Hotelsigiriya> data = snapshot.data!;
                    print(data.length);
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          child: Column(
                            children: [
                              hotelViewSg(hotelsg: data[index]),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                        );
                      }),
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
