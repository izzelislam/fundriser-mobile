import 'package:flutter/material.dart';
import 'package:fundriser/shared/theme.dart';
import 'package:fundriser/ui/widget/custom_button.dart';
import 'package:fundriser/ui/widget/custom_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/login.png"),
                Text("Silahkan Masuk", style: darkGrayTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),),
                const SizedBox(height: 8,),
                Text("SIlahkan masuk mengunakan nomor telepon \n dan password yang sudah terdaftar",
                  style: grayTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),
                ),
                const SizedBox(height: 40,),
                CustomInput(label: "Nomor Telepon", keyboardType: TextInputType.phone),
                const SizedBox(height: 16,),
                CustomInput(label: "Password", obscureText: true),
                const SizedBox(height: 10,),
                Text("jika lupa password silahkan hubunggi admin", style: darkGrayTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                )),
                const SizedBox(height: 50,),
                CustomButton(title: "Masuk", onPressed: () {
                  Navigator.pushNamed(context, "/home");
                })
              ],
            )
          ],
        )
      )
    );
  }
}