import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/features/services/domain/entities/service_category.dart';
import 'package:home_assist/features/services/presentation/widgets/category_header.dart';
import 'package:home_assist/features/services/presentation/widgets/service_cards_section.dart';
import 'package:home_assist/shared/widgets/search_services.dart';

class ServicesListScreen extends StatefulWidget {
  final ServiceCategory category;
  const ServicesListScreen({super.key, required this.category});

  @override
  State<ServicesListScreen> createState() => _ServicesListScreenState();
}

class _ServicesListScreenState extends State<ServicesListScreen> {
  String searchQuery = '';
  final TextEditingController _searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      appBar: AppBar(title: Text('${widget.category.name} Services'),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: SafeArea(child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        child: Column(
          children: [
            // SizedBox(height: 20,),

            // CategoryHeader(category: category),

            SizedBox(height: 20,),

            SearchServices(hintText: 'Search ${widget.category.name} services...',
            onChanged: (value){
              setState(() {
                searchQuery = value;
              });
            }, controller: _searchController,),

            SizedBox(height: 20,),

            ServiceCardsSection(category: widget.category, searchQuery: searchQuery,)

          ],
        ),
      )),
    );
  }
}
