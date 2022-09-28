import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/internetConnectionChecker.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<internetConnectionChecker>(context, listen: false)
        .initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('data')),
        body: context.watch<internetConnectionChecker>().setnetworkState
            ? Container(color: Colors.amber)
            : CircularProgressIndicator.adaptive());
  }
}

// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

// class SizerDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final deviceInfo = MediaQuery.of(context);
//     late var h = deviceInfo.size.height;
//     late var w = deviceInfo.size.width;
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Responsive App"),
//         ),
//         body: deviceInfo.orientation == Orientation.portrait
//             ? Container(
//                 height: 200.h,
//                 width: 400.w,
//                 color: Colors.red,
//                 child: Container(
//                   height: 200.h,
//                 ),
//               )
//             : SizedBox(
//                 width: 30.w,
//                 height: 20.h,
//                 child: Container(
//                   child: Center(
//                       child: Text(
//                     "World!",
//                     style: TextStyle(fontSize: 20.sp),
//                   )),
//                   color: Colors.red,
//                 ),
//               ));
//   }
// }
