import 'package:coffeeappui/utils/coffee_card.dart';
import 'package:coffeeappui/utils/coffee_types.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // find the best coffee for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Find the best coffee for you',
                style: GoogleFonts.adamina(fontSize: 40),
              ),
            ),

            const SizedBox(height: 20),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Find your coffee..',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // promo coffee card

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'lib/assets/images/coffee1.jpeg',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'Promo',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 52, left: 20),
                    child: Container(
                      height: 30,
                      width: 140,
                      color: Colors.black,
                      child: const Text(
                        ' Buy one get',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 88, left: 20),
                    child: Container(
                      height: 30,
                      width: 120,
                      color: Colors.black,
                      child: const Text(
                        ' one FREE ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // horizontal list of coffee types
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CoffeeTypes(coffeeType: 'Cappucino'),
                  CoffeeTypes(coffeeType: 'Latte'),
                  CoffeeTypes(coffeeType: 'Iced Coffee'),
                  CoffeeTypes(coffeeType: 'Milk Tea'),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // horizontal list view of coffee card
            SizedBox(
              height: 340,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeCard(
                    coffeeImagePath: 'lib/assets/images/latte.jpg',
                    coffeeName: 'Latte',
                    withCoffee: 'Almond Milk',
                    coffeePrice: 4.25,
                  ),
                  CoffeeCard(
                    coffeeImagePath: 'lib/assets/images/cappucino.jpeg',
                    coffeeName: 'Cappucino',
                    withCoffee: 'Oat Milk',
                    coffeePrice: 2.99,
                  ),
                  CoffeeCard(
                    coffeeImagePath: 'lib/assets/images/icedcoffee.jpeg',
                    coffeeName: 'Iced Coffee',
                    withCoffee: 'Extra Ice',
                    coffeePrice: 3.45,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
    );
  }
}
