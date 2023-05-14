import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_dbestech/pages/auth/sign_up_page.dart';
import 'package:food_delivery_dbestech/utils/colors.dart';
import 'package:food_delivery_dbestech/utils/dimensions.dart';
import 'package:food_delivery_dbestech/widgets/app_text_field.dart';
import 'package:food_delivery_dbestech/widgets/big_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            //app logo
            SizedBox(
              height: Dimensions.screenHeight * 0.05,
            ),
            Container(
              height: Dimensions.screenHeight * 0.20,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80,
                  backgroundImage: AssetImage("assets/image/logo part 1.png"),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: Dimensions.size20),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello",
                      style: TextStyle(
                        fontSize: 60 + 10,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    "Sign into your account",
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: Dimensions.size20,
            ),
            //phone
            AppTextField(
                textController: phoneController,
                hintText: "Phone",
                icon: Icons.phone),
            SizedBox(
              height: Dimensions.size20,
            ),

            //password
            AppTextField(
                textController: passwordController,
                hintText: "Password",
                icon: Icons.password_sharp),
            SizedBox(
              height: Dimensions.size20,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                RichText(
                  text: TextSpan(
                      text: "Sign into your account",
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 20,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.size20,
            ),

            GestureDetector(
              onTap: (){

              },
              child: Container(
                width: Dimensions.screenWidth / 2,
                height: Dimensions.screenHeight / 13,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.size30),
                  color: AppColors.mainColor,
                ),
                child: Center(
                  child: BigText(
                    text: "Sign In",
                    size: 16 + 8,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: Dimensions.size10,
            ),
            RichText(
              text: TextSpan(
                  text: "Don\'t have an account?",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            Get.to(SignUpPage(), transition: Transition.fade),
                      text: " Create",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
