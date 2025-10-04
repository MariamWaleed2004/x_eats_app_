import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_eats/core/const.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_field.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = AppSizes.screenWidth(context);
    double height = AppSizes.screenHeight(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Text(
          "Pick the meals that make you smile!",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: width * 0.04),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.08),
        child: Column(
          children: [
            CustomTextField(label: 'Search', prefixIcon: Icons.search),
            SizedBox(height: height * 0.045),
            Container(
              height: height * 0.042,
              width: width * 0.95,

              decoration: BoxDecoration(
                color: AppColors.lightGreen50,
                border: Border.all(color: AppColors.lightGreen500, width: width * 0.005),
                borderRadius: BorderRadius.circular(width * 0.02),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  children: [
                    Container(
                      width: width * 0.06,
                      height: width * 0.06,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: width * 0.026),
                    Text('TBS', style: TextStyle(fontSize: width * 0.026)),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.037),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: width * 0.23,
                      height: width * 0.23,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text("Cappuccino Regular", style: TextStyle(fontSize: width * 0.029)),
                  ],
                ),
                // SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: width * 0.23,
                      height: width * 0.23,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Kunafa', style: TextStyle(fontSize: width * 0.029)),
                  ],
                ),

                //SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: width * 0.23,
                      height: width * 0.23,
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
            SizedBox(height: height * 0.045),
            Container(
              height: height * 0.042,
              width: width * 0.95,

              decoration: BoxDecoration(
                color: AppColors.lightGreen50,
                border: Border.all(color: AppColors.lightGreen500, width: width * 0.005),
                borderRadius: BorderRadius.circular(width * 0.021),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.037),
                child: Row(
                  children: [
                    Container(
                      width: width * 0.058,
                      height: width * 0.058,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: width * 0.027),
                    Text('Buffalo Burger', style: TextStyle(fontSize: width * 0.027)),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.037),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: width * 0.23,
                      height: width * 0.23,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text("Bacon Mushroom", style: TextStyle(fontSize: width * 0.029)),
                  ],
                ),
                // SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: width * 0.23,
                      height: width * 0.23,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('SHiitake Mushroom', style: TextStyle(fontSize: width * 0.029)),
                  ],
                ),

                //SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: width * 0.23,
                      height: width * 0.23,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Old School', style: TextStyle(fontSize: width * 0.029)),
                  ],
                ),
              ],
            ),
            SizedBox(height: height * 0.045),
            Container(
              height: height * 0.042,
              width: width * 0.95,

              decoration: BoxDecoration(
                color: AppColors.lightGreen50,
                border: Border.all(color: AppColors.lightGreen500, width: width * 0.005),
                borderRadius: BorderRadius.circular(width * 0.021),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.037),
                child: Row(
                  children: [
                    Container(
                      width: width * 0.058,
                      height: width * 0.058,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: width * 0.027),
                    Text('Roma Pizza', style: TextStyle(fontSize: width * 0.027)),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.037),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: width * 0.23,
                      height: width * 0.23,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text("Blue cheese", style: TextStyle(fontSize: width * 0.029)),
                  ],
                ),
                // SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: width * 0.23,
                      height: width * 0.23,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Anchovy Pizza', style: TextStyle(fontSize: width * 0.029)),
                  ],
                ),

                //SizedBox(width: 20),
                Column(
                  children: [
                    Container(
                      width: width * 0.23,
                      height: width * 0.23,
                      child: SvgPicture.asset(
                        'assets/restaurants/abo_tarek.svg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Anchovy Pizza', style: TextStyle(fontSize:  width * 0.029)),
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
