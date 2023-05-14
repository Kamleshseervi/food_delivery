import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_dbestech/base/show_custom_snackbar.dart';
import 'package:food_delivery_dbestech/models/signup_body_model.dart';
import 'package:food_delivery_dbestech/pages/auth/sign_in_page.dart';
import 'package:food_delivery_dbestech/utils/colors.dart';
import 'package:food_delivery_dbestech/utils/dimensions.dart';
import 'package:food_delivery_dbestech/widgets/app_text_field.dart';
import 'package:food_delivery_dbestech/widgets/big_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var signUpImages = ["t.png", "f.png", "g.png"];

    void _registration() {
      String name = nameController.text.trim();
      String phone = phoneController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if (name.isEmpty) {
        showCustomSnackBar("please enter your Name", title: "Name");
      } else if (phone.isEmpty) {
        showCustomSnackBar("please enter your phone number",
            title: "Phone Number");
      } else if (email.isEmpty) {
        showCustomSnackBar("please enter your email address",
            title: "Email Address");
      } else if (!GetUtils.isEmail(email)) {
        showCustomSnackBar("please enter a valid email address",
            title: "Valid Email Address");
      } else if (password.isEmpty) {
        showCustomSnackBar("please enter your password", title: "Password");
      } else if (password.length < 6) {
        showCustomSnackBar("your password is less than 6 letters",
            title: "Password");
      } else {
        showCustomSnackBar("all good", title: "Perfect");
        SignUpPage signUpBody = SignUpBody(name: name, phone: phone, email: email, password: password)
      print(signUpBody.toString());
      }
    }

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
            //email
            AppTextField(
                textController: emailController,
                hintText: "Email",
                icon: Icons.email),
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
            //name
            AppTextField(
                textController: nameController,
                hintText: "Name",
                icon: Icons.person),
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

            GestureDetector(
              onTap: () {
                _registration();
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
                    text: "Sign Up",
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
                  recognizer: TapGestureRecognizer()
                    ..onTap =
                        () => Get.to(SignInPage(), transition: Transition.fade),
                  text: "Have an account already?",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                  )),
            ),
            SizedBox(
              height: Dimensions.screenHeight * 0.05,
            ),
            RichText(
              text: TextSpan(
                  text: "Sign up using one of these methods",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                  )),
            ),
            Wrap(
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("assets/image/" + signUpImages[index]),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
