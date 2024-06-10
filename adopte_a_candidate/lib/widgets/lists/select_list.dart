import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class SelectList extends StatefulWidget {
  const SelectList({
    required this.items,
    required this.defaultItem,
    required this.selectedItem,
    required this.onChanged,
    required this.controller,
    required this.title,
    required this.width,
    required this.height,
  });

  final List<String> items;
  final String defaultItem;
  final String selectedItem;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final String title;
  final double width;
  final double height;

  @override
  State<SelectList> createState() => _SelectListState(
        items: items,
        defaultItem: defaultItem,
        selectedItem: selectedItem,
        onChanged: onChanged,
        controller: controller,
        title: title,
        width: width,
        height: height,
      );
}

class _SelectListState extends State<SelectList> {
  final List<String> items;
  final String defaultItem;
  String selectedItem;
  final ValueChanged<String> onChanged;
  TextEditingController controller;
  final String title;
  final double width;
  final double height;

  _SelectListState({
    required this.items,
    required this.defaultItem,
    required this.selectedItem,
    required this.onChanged,
    required this.controller,
    required this.title,
    required this.width,
    required this.height,
  });

  @override
  void initState() {
    super.initState();
    if (controller.text.isEmpty) {
      selectedItem = defaultItem;
      controller.text = selectedItem;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 5.0, top: 10.0),
            child: Text(
              title, // selected title put above the Text Field
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: width,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: const Color(0xDDF5F5F5),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xffffd5c2),
                  width: 2.5,
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  itemHeight: 65,
                  value: controller.text,
                  icon: const Icon(Icons.expand_more),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedItem = newValue!;
                      controller.text = selectedItem;
                      onChanged(selectedItem);
                    });
                  },
                  items: items.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
