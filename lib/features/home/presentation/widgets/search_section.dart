import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: TextField(
         decoration: InputDecoration(
           hint: Text('Search for Services...'),
           hintStyle: TextStyle(color: Theme.of(context).hintColor),
           suffixIcon: Icon(Icons.search, color: Theme.of(context).primaryColor,),
           enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10),
             borderSide: BorderSide(color: Theme.of(context).primaryColor)
           ),
           // fillColor: Theme.of(context).primaryColor,
           // filled: true,
           // fillColor: Theme.of(context).canvasColor
         ),
      ),
    );
  }
}
