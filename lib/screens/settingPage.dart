// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_application_1/screens/loginPage.dart';

// class homePage extends StatefulWidget {
//   homePage({
//     required this.title,
//   });
//   final String title;

//   @override
//   _homePageState createState() => _homePageState();
// }

// class _homePageState extends State<homePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text(
//           "YPench",
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         elevation: 0,
//         backgroundColor: Color.fromARGB(255, 0, 0, 0),
//       ),
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Container(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 "Settings",
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 30,
//                     color: Colors.white),
//               ),
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 0, 0, 0),
//                 borderRadius: BorderRadius.only(
//                   bottomRight: Radius.circular(96),
//                 ),
//               ),
//               height: 200.0,
//               width: double.infinity,
//             ),
//             ButtonTheme(
//               minWidth: 300,
//               height: 60,
//               child: MaterialButton(
//                 shape: StadiumBorder(),
//                 onPressed: () {
//                   // FirebaseAuth.instance.signOut();
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (_) {
//                         return homeScreen();
//                       },
//                     ),
//                   );
//                 },
//                 child: Text(
//                   "SIGN OUT",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 0, 0, 0)),
//                 ),
//                 color: Color.fromARGB(255, 255, 255, 255),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
