import 'dart:js_util';
import 'package:flutter/material.dart';
import 'package:list/classes/NewCard.dart';

class mylist extends StatefulWidget {
  const mylist({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<mylist> {
  final _formKey = GlobalKey<FormState>();
  final serch = TextEditingController();
  final List<NewCard> card = <NewCard>[
    NewCard(
        name: "Первая карта",
        price: r" $40.00",
        address: "Wolf streat",
        update: 2),
    NewCard(name: "Вторая карта"),
    NewCard(name: "Третья карта"),
    NewCard(name: "Четвертая карта"),
    NewCard(name: "Пятая карта"),
    NewCard(name: "123")
  ];

  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8),
          width: screenWidth,
          height: screenHeight * 0.06,
          child: Row(
            children: [
              Container(
                width: screenWidth * 0.7,
                height: screenHeight * 0.06,
                child: TextFormField(
                  controller: serch,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    labelText: "name,address",
                    hintText: '[searchTerm]',
                  ),
                ),
              ),
              Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            for (var i = 0; i < card.length; i++) {
                              if (serch.text == "") {
                                card[i].show = true;
                              } else {
                                if (card[i].name == serch.text ||
                                    card[i].address == serch.text) {
                                  card[i].show = true;
                                } else {
                                  card[i].show = false;
                                }
                              }
                            }
                          });
                        },
                        child: Container(
                            width: screenWidth * 0.2,
                            height: screenHeight * 0.05,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 115, 7, 165),
                              border: Border.all(
                                  color: Color.fromARGB(255, 115, 7, 165),
                                  width: 2),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      height: screenHeight * 0.04,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              'Search',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0),
                                            )
                                          ]))
                                ]))),
                  ]))
            ],
          ),
        ),
        Container(
          width: screenWidth,
          height: screenHeight * 0.90,
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: card.length,
              itemBuilder: (BuildContext context, int index) {
                if (card[index].show == true) {
                  return Card(
                    elevation: 25,
                    color: Colors.white,
                    child: Column(children: [
                      Container(
                          child: Image.asset(
                        'image/150.png',
                        height: 149,
                      )),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text('${card[index].name}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 23)),
                          ),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text('${card[index].address}',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16))),
                            Container(
                                padding: const EdgeInsets.only(right: 25),
                                child: Text('${card[index].price}',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16))),
                          ]),
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: Text(
                                      'Last Updated:${card[index].update}',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16))),
                              Container(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Text('Price Per Night',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16)))
                            ]),
                      )
                    ]),
                  );
                } else {
                  return Container();
                }
              }),
        ),
      ],
    );
  }
}
