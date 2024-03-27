import 'package:flutter/material.dart';

class TestFileState extends ChangeNotifier {
  String? _dropValue;

  String? get dropValue => _dropValue;

  void setDropValue(String? value) {
    _dropValue = value;
    notifyListeners();
  }

  final TextEditingController clubSelectController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController batchController = TextEditingController();
  final TextEditingController rollController = TextEditingController();
  final TextEditingController semesterController = TextEditingController();
  final TextEditingController shiftController = TextEditingController();
  final TextEditingController regController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController paymentController = TextEditingController();
  final TextEditingController transactionController = TextEditingController();
  final TextEditingController fbController = TextEditingController();
  final TextEditingController interestedController = TextEditingController();
  final TextEditingController expertController = TextEditingController();

  // Dispose method to dispose text controllers when not needed
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    batchController.dispose();
    rollController.dispose();
    regController.dispose();
    phoneController.dispose();
    transactionController.dispose();
    fbController.dispose();
    interestedController.dispose();
    expertController.dispose();
    clubSelectController.dispose();
    semesterController.dispose();
    shiftController.dispose();
    paymentController.dispose();
  }
}
