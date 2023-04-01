import 'package:ecommerce/controller/login.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/view/widget/general/button.widget.dart';
import 'package:ecommerce/view/widget/general/input.widget.dart';
import 'package:ecommerce/view/widget/general/orDiv.widget.dart';
import 'package:ecommerce/view/widget/general/outButton.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(loginImp());
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GetBuilder<loginImp>(
                builder: (controller) => IconButton(
                    onPressed: () => controller.back(),
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: app_colors.text,
                    )),
              ),
              Container(
                height: 650,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          color: app_colors.text,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    input(
                      text: "Enter Your Username",
                      Secret: false,
                      label: "Username",
                    ),
                    input(
                      text: "Enter Your Password",
                      Secret: true,
                      label: "Password",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    button(
                      text: "Login",
                    ),
                    orDiv(),
                    outButton(
                      text: "Login with Google",
                      icon: Icon(Icons.abc),
                      image: true,
                    ),
                    outButton(
                      text: "Login with Facebook",
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      image: false,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don’t have an account?",
                          style: TextStyle(
                              color: app_colors.secondColors,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        GetBuilder<loginImp>(
                          builder: (controller) => InkWell(
                            onTap: () => controller.toRegister(),
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: app_colors.text.withOpacity(0.87),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
