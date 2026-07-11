import 'package:flutter/material.dart';

Future<bool?> showConfirmationDialog({
  required BuildContext context,
  required String title,
  required String message,
  String confirmText = 'Yes',
  String cancelText = 'No',
})  {

  return showDialog<bool>(context: context,
      builder: (context){
        return AlertDialog(
          alignment: Alignment.center,
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.pop(context, false);
                },
                child: const Text('No')
            ),
            FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                onPressed: (){
                  Navigator.pop(context, true);
                },
                child: const Text('Yes'))
          ],
        );

      });

}