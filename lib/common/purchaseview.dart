import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class purcahse_View extends StatefulWidget {
  const purcahse_View({Key? key}) : super(key: key);

  @override
  State<purcahse_View> createState() => _purcahse_ViewState();
}

class _purcahse_ViewState extends State<purcahse_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          new Container(
            padding: const EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWxzfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                    fit: BoxFit.fill)),
            // alignment: FractionalOffset.center,
          ),
          Stack(
            alignment: Alignment(-1, 5),
            children: [
              Container(
                color: Colors.red,
                height: 50,
                width: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
