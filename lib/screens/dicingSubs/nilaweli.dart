import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/kuckelsModel.dart';
import 'package:flutter_application_1/model/nilavelimodel.dart';
import 'package:flutter_application_1/model/sigiriyaModel.dart';
import 'package:flutter_application_1/screens/diving.dart';
import 'package:flutter_application_1/screens/hiking.dart';
import 'package:flutter_application_1/widget/container/hotel_viewSG.dart';
import 'package:flutter_application_1/widget/container/nilavelihotel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../widget/container/hotel_viewKn.dart';

class nilaweliInside extends StatefulWidget {
  const nilaweliInside({Key? key}) : super(key: key);

  @override
  _nilaweliInsideState createState() => _nilaweliInsideState();
}

class _nilaweliInsideState extends State<nilaweliInside> {
  servicedatanilaveli hotelkNL = servicedatanilaveli();
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
                        'https://lh5.googleusercontent.com/p/AF1QipOVnhy-h-kl6PpGwLUPS08QcP-rOYUUurNtByDe=s1600'),
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
                                    return divingPage();
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
                          'Nilaveli',
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
                      "Nilaveli (Tamil: நிலாவெளி, romanized: Nilāveḷi; Sinhala: නිල්වැල්ල, romanized: Nilvælla) is a coastal resort town and suburb of the Trincomalee District, Sri Lanka located 16 km northwest of the city of Trincomalee. A historically popular Tamil village and tourist destination of the district alongside the nearby Uppuveli, the numbers of visitors declined following the 2004 Indian Ocean tsunami and Sri Lankan Civil War, but have risen again since 2010. Pigeon Island National Park, one of the two marine national parks of the region is situated 1 km off the coast of Nilaveli, its many species of vegetation, coral and reef fish contributing to Nilaveli's rich biodiversity.",
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
                future: hotelkNL.get(),
                builder: ((context, AsyncSnapshot<List<Hotelnila>> snapshot) {
                  if (snapshot.hasData) {
                    print('----->');
                    print(snapshot.data?.first.name);
                    List<Hotelnila> data = snapshot.data!;
                    print(data.length);
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          child: Column(
                            children: [
                              hotelViewNilla(hotelnila: data[index]),
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
