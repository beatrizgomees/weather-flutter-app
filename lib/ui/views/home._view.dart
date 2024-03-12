import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  // Color.fromRGBO(25, 34, 65, 1),
                  // Color.fromRGBO(68, 58, 142, 1),
                  // Color.fromRGBO(103, 72, 170, 1),
                  // Color.fromRGBO(140, 68, 168, 1)
                  Colors.white,
                  Colors.blue.shade400,
                  Colors.blue.shade900
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Lottie.asset('assets/animation/weather_animation.json'),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Weather",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const Text(
                    'Application',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Get to know your weather maps\n and adar preception forecast',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: GestureDetector(
              child: Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 20, color: Colors.blue.shade900),
                  ),
                ),
              ),
            ),
            // child: ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.white,

            //       padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            //       textStyle:
            //           TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            //   onPressed: () {},
            //   child: Text("Get Started"),
            // ),
          )
        ],
      ),
    );
  }
}
