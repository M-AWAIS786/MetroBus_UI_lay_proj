import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      color: Color.fromARGB(236, 255, 255, 255),
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 81, 255)),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
          title: Center(
        child: Text('Metro Bus', style: TextStyle(fontWeight: FontWeight.bold)),
      )),
      backgroundColor: Color.fromARGB(236, 255, 255, 255),
      body: Column(children: [
        imagestate(images: 'assets/metro.jpg'),
        titlereview(
            title: 'Metro Bus Service',
            subtitle: 'Rawalpindi, Punjab 46000',
            ratings: 151),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            contactus(
              color: color,
              icon: Icons.call,
              title: 'CALL',
            ),
            contactus(
              color: color,
              icon: Icons.near_me,
              title: 'ROUTE',
            ),
            contactus(
              color: color,
              icon: Icons.share,
              title: 'SHARE',
            ),
          ],
        ),
        descriptionText(description: 'The Rawalpindi-Islamabad Metrobus is a 83.6 km (51.9 mi) bus rapid transit system operating in the Islamabad–Rawalpindi metropolitan area of Pakistan.Public transport in Islamabad and Rawalpindi was never a viable option for commute. Local transport routes existed, but many parts of the city werent connected to the center of Rawalpindi–Islamabad Metropolitan areas. Therefore, after the completion of the Lahore Metrobus, plans for a similar project in the Rawalpindi–Islamabad Metropolitan area were made.',),
      ]),
    );
  }
}

class imagestate extends StatelessWidget {
  final String images;
  const imagestate({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      images,
      fit: BoxFit.fill,
      width: double.infinity,
      // height: double.infinity / 2
    );
  }
}

class titlereview extends StatelessWidget {
  final title;
  final subtitle;
  final ratings;
  titlereview({super.key, this.title, this.subtitle, this.ratings});
  @override
  Widget build(BuildContext build) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(children: [
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              '$title',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text('$subtitle',
                style: TextStyle(color: Color.fromARGB(255, 121, 121, 121))),
          ]),
        ),
        Icon(Icons.star, color: Colors.orange),
        Text('107'),
      ]),
    );
  }
}

class contactus extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const contactus(
      {super.key,
      required this.title,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(icon, color: color),
      Text(
        '$title',
        style: TextStyle(color: color),
      ),
    ]);
  }
}

class descriptionText extends StatelessWidget {
  final description;
  const descriptionText({super.key, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Text(
        textAlign: TextAlign.justify,
        '$description',
        softWrap: true,
      ),
    );
  }
}
