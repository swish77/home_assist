import 'package:flutter/material.dart';
import 'package:home_assist/shared/widgets/search_services.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: SearchServices(hintText: 'Search for Services...', controller: _searchController,
     ),
    );
  }
}
