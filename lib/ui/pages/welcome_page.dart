import 'package:flutter/material.dart';
import 'package:fundriser/shared/theme.dart';
import 'package:fundriser/ui/widget/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 77),
            Image.asset("assets/welcome.png"),
            const SizedBox(height: 10),
            Text("Selamat Datang", style: darkGrayTextStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w900
            ),),
            const SizedBox(height: 10,),
            Text("silahkan lanjut ke halaman login untuk \n memulai pencatatan Perolehan donasi",
              style: grayTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
            ),
            const Spacer(),
            CustomButton(
              title: "Login",
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
            )
          ],
        ),
      ),
    );
  }
}
