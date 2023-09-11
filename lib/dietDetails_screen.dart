import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DietDetails extends StatefulWidget {
  DietDetails({Key? key}) : super(key: key);
  @override
  State<DietDetails> createState() => _DietDetailsState();
}

class _DietDetailsState extends State<DietDetails> {
  @override
  Widget build(BuildContext context) {
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
                    child: SvgPicture.asset('assets/icons/pancakes.svg'),
                  ),
                ),
                // Expanded(
                //   flex: 8,
                //   child: Container(
                //     // height: 300,
                //     width: double.infinity,
                //     decoration: BoxDecoration(
                //         color: Colors.white, shape: BoxShape.circle),
                //     child: Padding(
                //       padding: const EdgeInsets.all(20),
                //       child: SvgPicture.asset('assets/icons/pancakes.svg'),
                //     ),
                //   ),
                // ),
                Column(
                  children: [
                    Text('Pancakes',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600)),
                    Text(
                      'Easy' + ' | ' + '30min' + ' | ' + '190' + ' Calories',
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
                    'Pancakes are a traditional breakfast treat that are easy to make. Once you get the basic recipe down, you can start experimenting and putting your own spin on these breakfast-time favorites.' +
                        'Pancakes are good for health\n' +
                        'Pancakes are good for health\n' +
                        'Pancakes are good for health\n' +
                        'Pancakes are good for health\n' +
                        'Pancakes are good for health\n' +
                        'Pancakes are good for health\n' +
                        'Pancakes are good for health\n' +
                        'Pancakes are good for health\n' +
                        'Pancakes are good for health\n' +
                        'Pancakes are good for health\n' +
                        'Pancakes are good for health\n' +
                        'Pancakes are good for health\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ),
          ),
          // Expanded(
          //   child: Container(
          //       padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          //       margin: EdgeInsets.only(left: 10, right: 10),
          //       decoration: BoxDecoration(color: Colors.amber.shade100),
          //       child: Text(
          //         'Pancakes are a traditional breakfast treat that are easy to make. Once you get the basic recipe down, you can start experimenting and putting your own spin on these breakfast-time favorites.',
          //         textAlign: TextAlign.center,
          //         style: TextStyle(
          //           fontSize: 15,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       )),
          // )
        ],
      ),
    );
  }
}
