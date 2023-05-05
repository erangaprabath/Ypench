import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/model/user.dart';

class orderView extends StatefulWidget {
  const orderView({Key? key, required this.hotel}) : super(key: key);
  final Hotel hotel;

  @override
  State<orderView> createState() => _orderViewState();
}

class _orderViewState extends State<orderView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [Text('${widget.hotel.rooms}')],
      ),
    );
  }
}
