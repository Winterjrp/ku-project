import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:test_docker/constants/color.dart';

typedef CallbackFunction = void Function();

class AdminDeleteConfirmPopup {
  final BuildContext context;
  final String deleteText;
  final CallbackFunction callback;

  AdminDeleteConfirmPopup(
      {required this.context,
      required this.deleteText,
      required this.callback});

  void show() {
    AwesomeDialog(
      width: 500,
      context: context,
      dialogType: DialogType.warning,
      headerAnimationLoop: false,
      animType: AnimType.rightSlide,
      dialogBorderRadius: const BorderRadius.all(Radius.circular(20)),
      body: SizedBox(
        height: 120,
        child: Center(
          child: Text(
            deleteText,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
      btnCancel: Container(
        margin: const EdgeInsets.only(left: 60, right: 15, top: 12, bottom: 12),
        height: 40,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text('ยกเลิก',
              style: TextStyle(fontSize: 17, color: Colors.black)),
        ),
      ),
      btnOk: Container(
        margin: const EdgeInsets.only(left: 15, right: 60, top: 12, bottom: 12),
        height: 40,
        child: ElevatedButton(
          onPressed: () async {
            callback();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: acceptButtonBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'ตกลง',
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
        ),
      ),
    ).show();
  }
}
