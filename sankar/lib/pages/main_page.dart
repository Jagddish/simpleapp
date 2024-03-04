import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _colors = [
    Colors.teal,
    Colors.brown,
    Colors.yellow,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount: 3,itemBuilder: (context, index){
        return Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: _colors[index],
          child: Container(
            margin: EdgeInsets.only(top: 150.0, right: 20.0 , left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(

                  children: List.generate(3, (indexDots) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 5.0),
                      width: 8.0,
                      height:index==indexDots? 25.0:8.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color:index==indexDots? Colors.red:Colors.red.withOpacity(0.3),
                      ),
                    );
                  }),
                ),
              ],
            ),

          ),
        );
      }),
    );
  }
}
