import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_eats/core/const.dart';
import 'package:x_eats/features/authentication/presentation/widget/custom_text_field.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Text(
          "Your taste, your choice! Pick three",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomTextField(label: 'Search', prefixIcon: Icons.search),
            SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ScreenConst.mealsScreen);
                      },
                      child: Container(
                        width: 88,
                        height: 88,
                        child: SvgPicture.asset(
                          'assets/restaurants/abo_tarek.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text('Abo Tarek', style: TextStyle(fontSize: 11)),
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
                    Text('Buffalo Burger', style: TextStyle(fontSize: 11)),
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
                    Text('Andrea', style: TextStyle(fontSize: 11)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 23),
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
                    Text("Dominos' Pizza", style: TextStyle(fontSize: 11)),
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
                    Text('Gad', style: TextStyle(fontSize: 11)),
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
                    Text('Pizza Hut', style: TextStyle(fontSize: 11)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 26),
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
                    Text("Starbucks", style: TextStyle(fontSize: 11)),
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
                    Text('Karam el Sham', style: TextStyle(fontSize: 11)),
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
                    Text('TBS', style: TextStyle(fontSize: 11)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 26),
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
                    Text("Macdonald's", style: TextStyle(fontSize: 11)),
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
                    Text("Butcher's Burger", style: TextStyle(fontSize: 11)),
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
                    Text('ElHara ELshamya', style: TextStyle(fontSize: 11)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 26),
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
                    Text("Roma to Go", style: TextStyle(fontSize: 11)),
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
                    Text('Felfela', style: TextStyle(fontSize: 11)),
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
                    Text('Shawarma el Reem', style: TextStyle(fontSize: 11)),
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
