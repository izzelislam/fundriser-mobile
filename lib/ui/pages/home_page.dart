import 'package:flutter/material.dart';
import 'package:fundriser/shared/theme.dart';
import 'package:fundriser/ui/widget/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(Icons.qr_code_2_outlined, size: 35,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
            onTap: (int index) {
              if (index == 0) {
                Navigator.pushNamed(context, "/home");
              }

              if (index == 1) {
                Navigator.pushNamed(context, "/donor");
              }

              if (index == 2) {
                Navigator.pushNamed(context, "/donation");
              }
            },
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            backgroundColor: whiteColor,
            selectedItemColor: greenColor,
            unselectedItemColor: darkgrayColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle:
                greenTextStyle.copyWith(fontSize: 10, fontWeight: medium),
            unselectedLabelStyle:
                greenTextStyle.copyWith(fontWeight: medium, fontSize: 10),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Overview"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.volunteer_activism_outlined),
                  label: "Donatur"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard_outlined),
                  label: "Donasi"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                  label: "Akun Saya"),
            ]),
      ),
      body: Stack(
        children: [
          HeaderSection(),

          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.62,
              decoration: const BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
                child: ListView(
                  children: [
                    MenuSection(),
                    SizedBox(height: 35),
                    Text("Donasi Terbaru", style: darkGrayTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    )),
                    SizedBox(height: 10),
                    DonationCard(),
                    DonationCard(),
                    DonationCard(),
                    DonationCard(),
                    DonationCard(),
                    DonationCard(),
                    Center(
                      child: SizedBox(
                        width: 150,
                        child: CustomButton(title: "selengkapnya", onPressed: () {},),
                      ),
                    ),
                    SizedBox(height: 20),

                  ],
                ),
              ),
            ),
          ),
          AmountCard()
        ]
      ),
    );
  }
}

class DonationCard extends StatelessWidget {
  const DonationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        color: thinGreenColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bpk Jono Sudiro", style: darkGrayTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                )),
                const SizedBox(height: 5),
                Text("12/04/2022", style: darkGrayTextStyle.copyWith(
                  fontSize: 13
                ))
              ],
            ),
            const Spacer(),
            Text("Rp. 100.000", style: darkGrayTextStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700
            ))
          ],
        ),
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  const MenuSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MenuButton(
              title: "Input Donasi",
              icon: Icons.add_box_outlined,
              onTap: (){
                Navigator.pushNamed(context, "/donor_code");
              }
            ),
            MenuButton(
              title: "Donatur",
              icon: Icons.volunteer_activism_outlined,
              onTap: (){
                Navigator.pushNamed(context, "/donor");
              }
            ),
            MenuButton(
              title: "Donasi",
              icon: Icons.add_card_outlined,
              onTap: (){
                Navigator.pushNamed(context, "/donation");
              }
            ),
            MenuButton(
              title: "Buat Donatur",
              icon: Icons.group_add_outlined,
              onTap: (){
                Navigator.pushNamed(context, "/donor_form");
              }
            ),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MenuButton(
              title: "Absensi",
              icon: Icons.task_alt_outlined,
              onTap: (){}
            ),
            MenuButton(
              title: "Izin",
              icon: Icons.energy_savings_leaf_outlined,
              onTap: (){}
            ),
            MenuButton(
              title: "Rekap",
              icon: Icons.file_copy_outlined,
              onTap: (){}
            ),
            MenuButton(
              title: "Riayat",
              icon: Icons.history_outlined,
              onTap: (){}
            ),
          ],
        )
      ],
    );
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;

  const MenuButton({
    super.key,
    required this.title,
    required this.icon,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(icon, color: greenColor, size: 30),
            ),
          ),
          const SizedBox(height: 4),
          Text(title, style: darkGrayTextStyle.copyWith(
            fontSize: 12
          ))
        ],
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: greenColor,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset("assets/dumy.png",
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("M. Joko Budi Setiawan", style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),),
                  Text("TM-981927981792717", style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                  ),)
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 34,),
        const Center(
          child: Text("“Yakinlah bersama kesulitan ada \n kemudahan terus semangat ! “",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              // italic
              fontStyle: FontStyle.italic
            ),
          ),
        ),
        const SizedBox(height: 100,),
      ],),
    );
  }
}

class AmountCard extends StatelessWidget {
  const AmountCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.25,
      left: MediaQuery.of(context).size.width * 0.05,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 100,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Total Perolehan Bulan Maret ", style: darkGrayTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600
              ),),
              const SizedBox(height: 4),
              Text("Rp. 11.500.000", style: racingTextStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w700
              ))
            ],
          )
        ),
      ),
    );
  }
}