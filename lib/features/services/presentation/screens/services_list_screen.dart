import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/features/services/domain/entities/service_category.dart';
import 'package:home_assist/features/services/presentation/notifiers/services_list_notifier.dart';
import 'package:home_assist/features/services/presentation/widgets/service_cards_section.dart';
import 'package:home_assist/shared/widgets/search_services.dart';

class ServicesListScreen extends ConsumerStatefulWidget {
  final ServiceCategory category;
  const ServicesListScreen({super.key, required this.category});

  @override
  ConsumerState<ServicesListScreen> createState() => _ServicesListScreenState();
}

class _ServicesListScreenState extends ConsumerState<ServicesListScreen> {
  String searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.microtask(() {
      ref.read(servicesListProvider.notifier).getServices(widget.category.id);
    });
  }


  @override
  Widget build(BuildContext context) {

    final servicesState = ref.watch(servicesListProvider);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      appBar: AppBar(title: Text('${widget.category.name} Services'),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: SafeArea(child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        child: Column(
          children: [

            SizedBox(height: 20,),

            SearchServices(hintText: 'Search ${widget.category.name} services...',
            onChanged: (value){
              setState(() {
                searchQuery = value;
              });
            }, controller: _searchController,),

            SizedBox(height: 20,),

            if (servicesState.isLoading)
              const Center(child: CircularProgressIndicator())
            else if (servicesState.error != null)
              Center(child: Text(servicesState.error.toString()))
            else
              ServiceCardsSection(category: widget.category, searchQuery: searchQuery,
                services: servicesState.services,)
          ],
        ),
      )),
    );
  }
}
