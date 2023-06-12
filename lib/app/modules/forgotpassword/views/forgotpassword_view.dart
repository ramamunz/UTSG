import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/forgotpassword_controller.dart';
import '../../../../theme/theme.dart';
import '../../../../widget/custom_text_form_field.dart';

class ForgotpasswordView extends GetView<ForgotpasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            icon: Icon(
              Icons.arrow_circle_left,
              color: Colors.amber[600],
            )),
        title: Text(
          'Forgot Password',
          style: TextStyle(color: Colors.amber[600]),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 240,
          width: 170,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('.../../assets/Forgot Password.png'),
                fit: BoxFit.contain),
          ),
          child: Text(
            'Please Enter Email Adrress',
            style: TextStyle(color: Colors.black),
            // style: yellowTextStyle.copyWith(
            //     fontSize: 15, fontWeight: extraBold),
          ),
        ),
      ),
    );
  }
}
