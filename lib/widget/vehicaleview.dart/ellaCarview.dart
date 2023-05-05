import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ellaCarV extends StatefulWidget {
  const ellaCarV({Key? key}) : super(key: key);

  @override
  State<ellaCarV> createState() => _ellaCarVState();
}

class _ellaCarVState extends State<ellaCarV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("Vehicales")],
      ),
    );
  }
}
