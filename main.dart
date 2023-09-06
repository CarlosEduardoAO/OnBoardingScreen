import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:onboarding/card_planet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OnBoarding Screen',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final data = [
    CardPlanetData(
      title: "Messi The G.O.A.T",
      subtitle: "Lionel Andres Messi Cuccittini",
      image: const AssetImage("assets/images/messigold.jpg"),
      backgroundcolor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.lightBlue,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/ani1.json"),
    ),
    CardPlanetData(
      title: "Messi World Cup",
      subtitle: "The boy cant grow up, now is the Greatest of all time",
      image: const AssetImage("assets/images/messicup.jpg"),
      backgroundcolor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.lightBlue,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/ani2.json"),
    ),
    CardPlanetData(
      title: "The Last Dance",
      subtitle: "Messi Come's back to Barcelona",
      image: const AssetImage("assets/images/messibarca.jpg"),
      backgroundcolor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.red,
      subtitleColor: Colors.blueAccent,
      background: LottieBuilder.asset("assets/animation/ani3.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundcolor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}
