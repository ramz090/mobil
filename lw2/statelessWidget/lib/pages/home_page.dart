import 'package:flutter/material.dart';

class nuwRow extends StatelessWidget {
  final String text;
  final String title;
  final Color color;
  final IconData icon;
  final Color iconColor;
  nuwRow({
    Key? key,
    this.title = "Color:",
    this.text = "-",
    this.color = Colors.blue,
    this.icon = Icons.beach_access,
    this.iconColor = Colors.red,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: Container(
            height: 75,
            decoration: BoxDecoration(
                color: color,
                border: Border.all(),
                borderRadius: const BorderRadius.all(Radius.circular(50))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                        Column(children: [
                          Icon(icon, color: iconColor, size: 50.0),
                        ])
                      ]))),
                  Expanded(
                      child: Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(fontSize: 20),
                              )
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text(text)])
                      ])))
                ])));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  'Верхняя строка с тестом',
                  style: TextStyle(fontSize: 25),
                ))
              ],
            )),
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: Container(
                    child: Column(children: [
              nuwRow(),
              nuwRow(
                text: '123',
                color: Colors.yellow,
                icon: Icons.favorite,
                title: 'title:',
                iconColor: Colors.black,
              )
            ]))),
          ],
        )
      ],
    ));
  }
}
