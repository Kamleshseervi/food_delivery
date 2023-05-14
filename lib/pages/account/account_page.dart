import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_dbestech/utils/dimensions.dart';
import 'package:food_delivery_dbestech/widgets/account_widget.dart';
import 'package:food_delivery_dbestech/widgets/app_icon.dart';
import 'package:food_delivery_dbestech/widgets/big_text.dart';

import '../../utils/colors.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: BigText(
          text: "Profile",
          size: 24,
          color: Colors.white,
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.size20),
        child: Column(
          children: [
            //profile icon
            AppIcon(
              icon: Icons.person,
              backgroundColor: AppColors.mainColor,
              iconColor: Colors.white,
              iconSize: Dimensions.size15 * 5,
              size: Dimensions.size15 * 10,
            ),
            SizedBox(
              height: Dimensions.size45,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //name
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.person,
                          backgroundColor: AppColors.mainColor,
                          iconColor: Colors.white,
                          iconSize: Dimensions.size25,
                          size: Dimensions.size30,
                        ),
                        bigText: BigText(text: "Kamlesh Seervi")),
                    SizedBox(
                      height: Dimensions.size25,
                    ),
                    //phone
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.phone,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          iconSize: Dimensions.size25,
                          size: Dimensions.size30,
                        ),
                        bigText: BigText(text: "9876543210")),
                    SizedBox(
                      height: Dimensions.size25,
                    ),
                    //email
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.email,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          iconSize: Dimensions.size25,
                          size: Dimensions.size30,
                        ),
                        bigText: BigText(text: "xyz@email.com")),
                    SizedBox(
                      height: Dimensions.size25,
                    ),
                    //address
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.location_on,
                          backgroundColor: AppColors.yellowColor,
                          iconColor: Colors.white,
                          iconSize: Dimensions.size25,
                          size: Dimensions.size30,
                        ),
                        bigText: BigText(text: "IIIT Manipur")),
                    SizedBox(
                      height: Dimensions.size25,
                    ),
                    //message
                    AccountWidget(
                        appIcon: AppIcon(
                          icon: Icons.message_outlined,
                          backgroundColor: Colors.redAccent,
                          iconColor: Colors.white,
                          iconSize: Dimensions.size25,
                          size: Dimensions.size30,
                        ),
                        bigText: BigText(text: "Kamlesh Seervi")),
                    SizedBox(
                      height: Dimensions.size25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
