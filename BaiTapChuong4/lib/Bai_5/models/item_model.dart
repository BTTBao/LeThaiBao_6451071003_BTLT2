class Item {
  String headerValue;
  List<String> expandedValue;
  bool isExpanded;

  Item({required this.headerValue, required this.expandedValue, this.isExpanded = false});
}