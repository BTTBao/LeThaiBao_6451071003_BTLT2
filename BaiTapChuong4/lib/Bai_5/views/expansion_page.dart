import 'package:flutter/material.dart';
import '../models/item_model.dart';
import '../utils/app_constants.dart';

class ExpansionPage extends StatefulWidget {
  @override
  _ExpansionPageState createState() => _ExpansionPageState();
}

class _ExpansionPageState extends State<ExpansionPage> {
  List<Item> _data = [
    Item(headerValue: 'Fruits', expandedValue: ['Apple', 'Banana', 'Orange']),
    Item(headerValue: 'Vegetables', expandedValue: ['Carrot', 'Broccoli']),
    Item(headerValue: 'Drinks', expandedValue: ['Water', 'Juice', 'Milk']),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Category Menu")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionPanelList(
  animationDuration: const Duration(milliseconds: 500), // Thêm dòng này
  expansionCallback: (int index, bool isExpanded) {
    setState(() {
      _data[index].isExpanded = !isExpanded;
    });
  },
  children: _data.map<ExpansionPanel>((Item item) {
    return ExpansionPanel(
      canTapOnHeader: true, // Thêm dòng này để nhấn vào tiêu đề cũng mở được
      headerBuilder: (BuildContext context, bool isExpanded) {
        return ListTile(title: Text(item.headerValue));
      },
      body: Column(
        children: item.expandedValue.map((e) => ListTile(title: Text(e))).toList(),
      ),
      isExpanded: item.isExpanded,
    );
  }).toList(),
),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(AppConstants.mssv),
            ),
          ],
        ),
      ),
    );
  }
}