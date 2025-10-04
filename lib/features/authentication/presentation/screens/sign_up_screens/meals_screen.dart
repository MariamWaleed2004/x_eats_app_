import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_eats/core/const.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_field.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Text(
          "Pick the meals that make you smile!",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
        child: Column(
          children: [
            CustomTextField(label: 'Search', prefixIcon: Icons.search),
            SizedBox(height: 37),
            Container(
              height: 34,
              width: 368,

              decoration: BoxDecoration(
                color: AppColors.lightGreen50,
                border: Border.all(color: AppColors.lightGreen500, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    Container(
                      width: 22,
                      height: 22,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('TBS', style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 88,
                      height: 88,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text("Cappuccino Regular", style: TextStyle(fontSize: 11)),
                  ],
                ),
                // SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: 88,
                      height: 88,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Kunafa', style: TextStyle(fontSize: 11)),
                  ],
                ),

                //SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: 88,
                      height: 88,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Passion fruit', style: TextStyle(fontSize: 11)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 37),
            Container(
              height: 34,
              width: 368,

              decoration: BoxDecoration(
                color: AppColors.lightGreen50,
                border: Border.all(color: AppColors.lightGreen500, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    Container(
                      width: 22,
                      height: 22,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('Buffalo Burger', style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 88,
                      height: 88,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text("Bacon Mushroom", style: TextStyle(fontSize: 11)),
                  ],
                ),
                // SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: 88,
                      height: 88,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('SHiitake Mushroom', style: TextStyle(fontSize: 11)),
                  ],
                ),

                //SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: 88,
                      height: 88,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Old School', style: TextStyle(fontSize: 11)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 37),
            Container(
              height: 34,
              width: 368,

              decoration: BoxDecoration(
                color: AppColors.lightGreen50,
                border: Border.all(color: AppColors.lightGreen500, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    Container(
                      width: 22,
                      height: 22,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('Roma Pizza', style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 88,
                      height: 88,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text("Blue cheese", style: TextStyle(fontSize: 11)),
                  ],
                ),
                // SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: 88,
                      height: 88,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Anchovy Pizza', style: TextStyle(fontSize: 11)),
                  ],
                ),

                //SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: 88,
                      height: 88,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Anchovy Pizza', style: TextStyle(fontSize: 11)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
