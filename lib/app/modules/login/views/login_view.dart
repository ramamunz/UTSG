import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';
import '../../../../theme/theme.dart';
import '../../../../widget/custom_text_form_field.dart';

class LoginView extends GetView<LoginController> {
  final TextEditingController noBadgeController =
      TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  Widget inputSection() {
    Widget noBadgeInput() {
      return CustomTextFormField(
        title: 'No Badge',
        keyboardType: TextInputType.number,
        hintText: '',
        controller: noBadgeController,
      );
    }

    Widget passInput() {
      return CustomTextFormField(
        title: 'Password',
        keyboardType: TextInputType.none,
        hintText: '',
        obscureText: true,
        controller: passwordController,
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: kNeutralWhiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          noBadgeInput(),
          passInput(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                        width: 370,
                        height: 400,
                        decoration: BoxDecoration(
                          color: kNeutralWhiteColor,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes pos2ition of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              inputSection(),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/home');
                                },
                                child: Container(
                                  width: 280,
                                  height: 48,
                                  decoration: BoxDecoration(
                                      color: kYellowColor,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                    child: Text(
                                      'LOGIN',
                                      style: whiteTextStyle.copyWith(
                                        fontSize: 20,
                                        fontWeight: extraBold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, '/forgotpassword');
                                    },
                                    child: Text(
                                      'Forgot Password',
                                      style: TextStyle(color: Colors.red),
                                      textAlign: TextAlign.end,
                                      // style: yellowTextStyle.copyWith(
                                      //     fontSize: 15, fontWeight: extraBold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                      top: -140,
                      child: Container(
                        height: 240,
                        width: 160,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('.../../assets/Logo-UTSG.png'),
                              fit: BoxFit.contain),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 170,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
