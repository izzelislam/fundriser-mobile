import 'package:flutter/material.dart';
import 'package:fundriser/shared/theme.dart';
import 'package:fundriser/ui/widget/custom_button.dart';
import 'package:fundriser/ui/widget/custom_input.dart';

class DonorCodePage extends StatelessWidget {
  const DonorCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thinGreenColor,
      appBar: AppBar(
        title: Text("Scan Kode Donatur"),
      ),
      body: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            alignment: Alignment(0, -1.2),
            decoration: BoxDecoration(
              color: thinGreenColor,
            ),
            child: Image.asset("assets/scan.png"),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.65,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius :const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 47),
                    CustomInput(label: "Kode Donatur", obscureText: false),
                    const SizedBox(height: 19),
                    CustomButton(title: "Cari Donatur", onPressed: (){},),
                    const SizedBox(height: 20),
                    Center(
                      child: Text("Atau Scan Barcode ?", style: darkGrayTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      )),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(title: "Scan Qr", isOutline: true, onPressed: (){},),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}