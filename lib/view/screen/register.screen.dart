import 'package:ecommerce/controller/register.controller.dart';
import 'package:ecommerce/core/constatnt/colors.dart';
import 'package:ecommerce/view/widget/general/button.widget.dart';
import 'package:ecommerce/view/widget/general/input.widget.dart';
import 'package:ecommerce/view/widget/general/orDiv.widget.dart';
import 'package:ecommerce/view/widget/general/outButton.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(registerImp());
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
              GetBuilder<registerImp>(
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
                      "Regiater",
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
                    input(
                      text: "Confirm Password",
                      Secret: true,
                      label: "Confirm Password",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    button(
                      text: "Register",
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
                          "Already have an account?",
                          style: TextStyle(
                              color: app_colors.secondColors,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        GetBuilder<registerImp>(
                          builder: (controller) => InkWell(
                            onTap: () => controller.toLogin(),
                            child: Text(
                              "login",
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
