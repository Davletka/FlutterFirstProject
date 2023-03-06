import 'package:first_project/deal.dart';
import 'package:first_project/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => CardPageState();
}

class CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Карточки"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: const BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(
                            color: Colors.black,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              child: ListView(),
            )
          ],
        ));
  }
}

class Cards {
  int? id;
  String? title;
  Icon? icon;
  Cards({this.id, this.title, this.icon});
}

List<Cards> listCards = [
  Cards(id: 0, title: "Добавить", icon: Icon(Icons.add)),
  Cards(id: 1, title: "Удалить", icon: Icon(Icons.delete)),
  Cards(id: 2, title: "Телефон", icon: Icon(Icons.phone)),
  Cards(id: 3, title: "Лицо", icon: Icon(Icons.face)),
  Cards(id: 4, title: "Добавить", icon: Icon(Icons.list)),
];
