import 'package:flutter/material.dart';

class SearchServices extends StatefulWidget {
  final String hintText;
  final ValueChanged<String>? onChanged ;
  final TextEditingController controller;
  const SearchServices({super.key, this.onChanged, required this.hintText, required this.controller});

  @override
  State<SearchServices> createState() => _SearchServicesState();
}

class _SearchServicesState extends State<SearchServices> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controller.addListener((){
      setState(() {

      });
    });
  }


  @override
  Widget build(BuildContext context) {

    final hasText = widget.controller.text.isNotEmpty;

    return TextField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hint: Text(widget.hintText,
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimaryFixed),),
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        suffixIcon: hasText ? GestureDetector(
            onTap: (){
              widget.controller.clear();
              widget.onChanged?.call('');
            },
            child: Icon(Icons.close, color: Theme.of(context).primaryColor)
        )
        : Icon(Icons.search, color: Theme.of(context).primaryColor,),
      ),
    );
  }
}
