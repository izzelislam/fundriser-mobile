import 'package:flutter/material.dart';
import 'package:fundriser/shared/theme.dart';

class DonorPage extends StatelessWidget {
  const DonorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thinGreenColor,
      appBar: AppBar(
        title: Text("Data Donatur"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("${index + 1}.", style: darkGrayTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700
                      )),
                      SizedBox(width: 10,),
                      Text("Bpk Jono Sudiro", style: darkGrayTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                      )),
                      Spacer(),
                      Icon(Icons.remove_red_eye_outlined, color: greenColor),
                      const SizedBox(width: 10,),
                      Icon(Icons.edit_calendar_sharp, color: orangeColor, size: 20),
                      const SizedBox(width: 10,),
                      Icon(Icons.delete_outlined, color: redColor),
                    ],
                  ),
                ],
              ),
            );
          })
      ),
    );
  }
}