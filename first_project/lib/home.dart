import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/services/hardware_keyboard.dart';

import 'calendar.dart';
import 'deal.dart';

int index = 0;
// final list = [const DealPage(), const Calendar()];
bool appbar = false;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

TextEditingController searchController = TextEditingController();
bool tittleAppBar = false;

String title = "Список дел";

class _MyWidgetState extends State<HomePage> {
  List<Deal> newDealList = List.from(dealList);
  onItemSearch(String value) {
    setState(() {
      newDealList =
          dealList.where((element) => element.title!.contains(value)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget listSearchWidget(BuildContext context) {
      return ListView(
        children: newDealList.map(
          (deal) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(
                  color: Colors.black,
                ),
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                tileColor: Colors.blueGrey[100],
                leading: Text(
                  deal.id.toString(),
                ),
                title: Text(deal.title!),
                subtitle: Text(deal.discription!),
                trailing: const Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
            );
          },
        ).toList(),
      );
    }

    final list = [
      listSearchWidget(context), // 0
      const Calendar(), // 1
    ];

    AppBar appBarSearch = AppBar(
      centerTitle: true,
      title: TextField(
        decoration: const InputDecoration(
          label: Text("Название"),
        ),
        controller: searchController,
        onChanged: onItemSearch,
      ),
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                searchController.clear();
                tittleAppBar = false;
                newDealList = dealList;
              });
            },
            icon: const Icon(Icons.close))
      ],
    );
    AppBar appBar = AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                tittleAppBar = true;
              });
            },
            icon: const Icon(Icons.search))
      ],
    );

    AppBar deafultAppBar = AppBar(
      title: Text(title),
      centerTitle: true,
    );

    return Scaffold(
      appBar:
          index == 0 ? (tittleAppBar ? appBarSearch : appBar) : deafultAppBar,
      body: list.elementAt(index),
      floatingActionButton: index == 0
          ? FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            )
          : null,
      drawer: const Drawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Список дел",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Календарь",
          ),
        ],
        onTap: (value) {
          setState(() {
            index = value;
            if (index == 0) {
              title = 'Список дел';
            } else {
              title = 'Календарь';
            }
          });
        },
      ),
    );
  }
}
