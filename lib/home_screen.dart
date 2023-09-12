import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:practice_project_1/dietDetails_screen.dart';
import 'package:practice_project_1/models/category_model.dart';
import 'package:practice_project_1/models/diet_model.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];

  void getCategories() {
    categories = CategoryModel.getCategories();
  }

  void getDiets() {
    diets = DietModel.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    getCategories();
    getDiets();
    return Scaffold(
      appBar: myappbar(),
      backgroundColor: Colors.white,
      body: ListView(children: [
        textFieldSearch(),
        listViewCategory(),
        SizedBox(
          height: 20,
        ),
        listViewRecommendations(),
        SizedBox(
          height: 20,
        ),
        listViewPopular()
      ]),
    );
  }

  Padding listViewPopular() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Popular',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
          ),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(msg: "View All Clicked!");
            },
            child: Container(
              height: 200,
              child: ListView.separated(
                itemCount: 5,
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12)),
                    child: card_popular(),
                  );
                },
              ),
            ),
          )
          // card_popular()
        ],
      ),
    );
  }

  Row card_popular() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            height: 80,
            width: 80,
            child: SvgPicture.asset('assets/icons/pancakes.svg')),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Honey Pancake',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              'Easy' + ' | ' + '30 mins' + ' | ' + '190 calories',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 13),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Fluttertoast.showToast(msg: "Right Arrow Clicked!");
          },
          child: Container(
            height: 24,
            width: 24,
            padding: EdgeInsets.all(4),
            decoration:
                BoxDecoration(shape: BoxShape.circle, border: Border.all()),
            child: SvgPicture.asset(
              'assets/icons/right-arrow.svg',
            ),
          ),
        ),
      ],
    );
  }

  Column listViewRecommendations() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Recommendation\nfor Diets',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Container(
              height: 270,
              color: Colors.white,
              child: ListView.separated(
                padding: EdgeInsets.only(left: 20, right: 20),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(
                  width: 20,
                ),
                itemCount: diets.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 240,
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          // decoration: BoxDecoration(color: Colors.black),
                          height: 100,
                          width: 100,
                          child: SvgPicture.asset(diets[index].iconPath),
                        ),
                        Column(
                          children: [
                            Text(
                              diets[index].name,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 18),
                            ),
                            Text(
                              diets[index].level +
                                  ' | ' +
                                  diets[index].duration +
                                  ' | ' +
                                  diets[index].calorie +
                                  ' Calories',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.4),
                                  fontSize: 13),
                            ),
                          ],
                        ),

                        GestureDetector(
                          onTap: () {
                            // Fluttertoast.showToast(msg: "View Clicked!");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DietDetails(
                                    dietModel: diets[index],
                                  ),
                                ));

                            // Navigator.pushNamed(
                            //     context, '/dietDetails_screen.dart');
                          },
                          child: Container(
                            height: 45,
                            width: 100,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  diets[index].viewIsSelected
                                      ? Colors.blue.shade300
                                      : Colors.transparent,
                                  diets[index].viewIsSelected
                                      ? Colors.purple.shade300
                                      : Colors.transparent
                                ]),
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                              child: Text(
                                'View',
                                style: TextStyle(
                                    color: diets[index].viewIsSelected
                                        ? Colors.white
                                        : Colors.purpleAccent,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        )
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Text(
                        //       diets[index].level,
                        //       style: TextStyle(
                        //           color: Colors.black.withOpacity(0.4),
                        //           fontSize: 15),
                        //     ),
                        //     const VerticalDivider(
                        //       color: Colors.black,
                        //       // indent: 15, // top margin of divider
                        //       // endIndent: 15, // bottom margin of divider
                        //       thickness: 0.5,
                        //     ),
                        //     Text(
                        //       diets[index].level,
                        //       style: TextStyle(
                        //           color: Colors.black.withOpacity(0.4),
                        //           fontSize: 15),
                        //     ),
                        //     Text(
                        //       diets[index].level,
                        //       style: TextStyle(
                        //           color: Colors.black.withOpacity(0.4),
                        //           fontSize: 15),
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        )
      ],
    );
  }

  Column listViewCategory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 20),
          // margin: EdgeInsets.only(bottom: 0),
          child: Text(
            'Category',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          color: Colors.white,
          // margin: EdgeInsets.only(left: 20),
          height: 130,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: 25,
            ),
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20, right: 20),
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                decoration: BoxDecoration(
                    color: categories[index].boxColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: SvgPicture.asset(categories[index].iconPath),
                      ),
                    ),
                    Text(
                      categories[index].name,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 14),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Container textFieldSearch() {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(15),
            hintText: 'Search Paratha',
            hintStyle: TextStyle(color: Colors.brown.shade200, fontSize: 15),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset('assets/icons/search-icon.svg'),
            ),
            suffixIcon: Container(
              width: 65,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const VerticalDivider(
                      color: Colors.black,
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.2,
                    ),
                    Padding(
                      // padding: EdgeInsets.only(top: 12, bottom: 12, right: 12, left: 2),
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset('assets/icons/filter-icon.svg'),
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
      ),
    );
  }

  AppBar myappbar() {
    return AppBar(
        // backgroundColor: Colors.yellow.shade400,

        centerTitle: true,
        title: const Text('Breakfast',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Fluttertoast.showToast(msg: "Button Clicked...");
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color(0xffF7F8F8),
                borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset('assets/icons/left-arrow.svg',
                height: 20, width: 20),
          ),
        ),
        actions: [
          Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 37,
              decoration: BoxDecoration(
                  color: const Color(0xffF7F8F8),
                  borderRadius: BorderRadius.circular(10)),
              child: SvgPicture.asset('assets/icons/dots.svg',
                  height: 20, width: 20))
        ]);
  }
}
