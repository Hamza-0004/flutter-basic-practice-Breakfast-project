import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practice_project_1/models/diet_model.dart';

class DietDetails extends StatefulWidget {
  final DietModel dietModel;
  DietDetails({Key? key, required this.dietModel}) : super(key: key);
  @override
  State<DietDetails> createState() => _DietDetailsState();
}

class _DietDetailsState extends State<DietDetails> {
  @override
  Widget build(BuildContext context) {
    DietModel dietModel = widget.dietModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Diet Details'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 1,
            // height: 400,
            // width: 400,
            decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SvgPicture.asset(dietModel.iconPath),
                  ),
                ),
                Column(
                  children: [
                    Text(dietModel.name,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600)),
                    Text(
                      dietModel.level +
                          ' | ' +
                          dietModel.duration +
                          ' | ' +
                          dietModel.calorie +
                          ' Calories',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.4), fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(color: Colors.amber.shade100),
                  child: Text(
                    dietModel.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
