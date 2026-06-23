import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/features/bookings/domain/entities/booking.dart';
import 'package:home_assist/features/bookings/presentation/screens/booking_success_screen.dart';
import 'package:home_assist/features/bookings/presentation/widgets/booking_bottom_bar.dart';
import 'package:home_assist/features/bookings/presentation/widgets/booking_date_time_section.dart';
import 'package:home_assist/features/bookings/presentation/widgets/service_summary_card.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';

class BookingScreen extends StatefulWidget {

  final Service service;
  const BookingScreen({super.key, required this.service});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  final TextEditingController addressController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool dateError = false;
  bool timeError = false;

  void onConfirm(){
    dateError = false;
    timeError = false;

    if(selectedDate == null){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a date'),
        ),
      );
      setState(() {
        dateError = true;
      });
      return;
    }

    if(selectedTime == null){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a time'),
        ),
      );

      setState(() {
        timeError = true;
      });
      return;
    }

    if(!formKey.currentState!.validate()){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter the address'),
        ),
      );
      return;
    }

    Navigator.push(context, MaterialPageRoute(builder: (context){
      return BookingSuccessScreen(booking: Booking(id: 'BK${DateTime.now().millisecondsSinceEpoch}', serviceId: widget.service.id, serviceName: widget.service.name, bookingDate: selectedDate!, address: addressController.text.trim(), status: 'Success', bookingTime: selectedTime!),);
    }));

  }
  
  Future<void> pickDate() async {
   final pickedDate =  await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2030), );

   if(pickedDate != null){
     setState(() {
       selectedDate = pickedDate;
     });
   }
  }

  Future<void> pickTime() async{
    final pickedTime = await showTimePicker(context: context,
        initialTime: TimeOfDay.now());


    if(pickedTime != null){
      setState(() {
        selectedTime = pickedTime;
      });
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BookingBottomBar(
        onClickedConfirm: onConfirm,),
      appBar: AppBar(
        title: Text('Booking'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal :AppSpacing.lg, vertical: AppSpacing.md),
              child: Column(
                children: [
                  ServiceSummaryCard(service: widget.service),

                  SizedBox(height: 20,),

                  BookingDateTimeSection(pickDate: pickDate, pickTime: pickTime, selectedDate: selectedDate, selectedTime: selectedTime,
                         dateError: dateError, timeError: timeError,),

                  SizedBox(height: 20,),

                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        buildAddressField(addressController),

                        SizedBox(height: 20,),


                        buildNotesField(notesController)

                      ],
                    ),

                  )
                ],
              ),
            ),
          )

      ),
    );
  }

  TextFormField buildAddressField(TextEditingController controller) {
    return TextFormField(
                      controller: controller,
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: 'Service Address',
                        alignLabelWithHint: true,
                        prefixIcon: Icon(Icons.location_on)
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your address';
                        }
                        return null;
                      },

                    );
  }

  Widget buildNotesField(TextEditingController controller){
      return TextFormField(
        controller: controller,
        maxLines: 4,
        decoration: InputDecoration(
          labelText: 'Additional Notes',
          alignLabelWithHint: true
        ),
      );

  }

}
