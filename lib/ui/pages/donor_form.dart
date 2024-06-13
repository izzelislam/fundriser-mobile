import 'package:flutter/material.dart';
import 'package:fundriser/shared/theme.dart';
import 'package:fundriser/ui/widget/custom_button.dart';
import 'package:fundriser/ui/widget/custom_input.dart';

class DonorFormPage extends StatelessWidget {
  const DonorFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buat Donatur"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            CustomInput(
              label: "Nama Donatur",
              hintText: "Masukan Nama donatur",
            ),
            const SizedBox(height: 15),
            CustomInput(
              label: "No Telepon Donatur",
              keyboardType: TextInputType.phone
            ),
            const SizedBox(height: 15),
            CustomInput(
              label: "Provinsi",
              hintText: "Masukan Nama Provinsi"
            ),
            const SizedBox(height: 15),
            CustomInput(
              label: "Kabupaten",
              hintText: "Masukan Nama Kabupaten"
            ),
            const SizedBox(height: 15),
            CustomInput(
              label: "Kecamatan",
              hintText: "Masukan Nama Kecamatan"
            ),
            const SizedBox(height: 15),
            CustomInput(
              label: "Alamat",
              hintText: "Masukan Alamat Lengkap"
            ),
            const SizedBox(height: 15),
            CustomInput(
              label: "Latitude",
              hintText: "Masukan Latitude"
            ),
            const SizedBox(height: 15),
            CustomInput(
              label: "longitude",
              hintText: "Masukan Longitude"
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: (){},
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined, color: greenColor,),
                  SizedBox(width: 5,),
                  Text("Dapatkan Lat/Long / Lokasi Saat Ini, Klik disini !", style: greenTextStyle.copyWith(
                    fontSize: 13
                  ))
                ],
              ),
            ),
            const SizedBox(height: 15),
            CustomButton(title: "Simpan Data", onPressed: () {
              
            })
          ],
        ),
      ),
    );
  }
}