import 'package:flutter/material.dart';

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
        title: Text('Diet Details'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Text('Diet Details'),
            )
          ],
        ),
      ),
    );
  }
}
