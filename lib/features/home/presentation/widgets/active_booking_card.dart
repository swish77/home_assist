import 'package:flutter/material.dart';
import 'package:home_assist/shared/widgets/section_header.dart';

class ActiveBookingCard extends StatelessWidget {
  final String serviceName;
  final String workerName;
  final String status;
  final String eta;
  final VoidCallback onPressed;
  const ActiveBookingCard({super.key, required this.serviceName, required this.workerName, required this.status, required this.eta, required this.onPressed});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        SectionHeader(sectionName: 'Active Booking'),
        Card(
          // color: Theme.of(context).colorScheme.primaryContainer,
          // elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [colorScheme.primary,
                colorScheme.inversePrimary,]),
              // border: Border(right: BorderSide.none, top: BorderSide.none )
              borderRadius: BorderRadius.circular(10)
            ),
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Flexible(flex:1,
                    child: Text(serviceName, style: textTheme.titleMedium!.copyWith(
                      color: Colors.white
                    ),)),
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildActiveCardDetails(context, title: 'Technician', data: workerName),
                      const SizedBox(height: 5,),
                      _buildActiveCardDetails(context, title: 'Status', data: status),
                      const SizedBox(height: 5,),
                      _buildActiveCardDetails(context, title: 'ETA', data: eta),
                    ],
                  ),
                ),
                SizedBox(
                  width: 90,
                  child: FilledButton(onPressed: (){},
                      style: FilledButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                      ),
                      child: Text('Track',
                        style: textTheme.labelLarge!.copyWith(color: Colors.white),
                      )),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildActiveCardDetails(BuildContext context, {required String title, required String data}) {
    return RichText(text: TextSpan(
                    children: [
                      TextSpan(text: '$title: ', style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onInverseSurface
                      ),),
                      TextSpan(text: data, style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white
                      ),)
                    ]
                  ));
  }
}
