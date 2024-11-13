import 'package:flutter/material.dart';
import 'package:glowmoure_mobile/widgets/left_drawer.dart';
import 'package:glowmoure_mobile/screens/productentry_form.dart';
import 'package:glowmoure_mobile/widgets/product_card.dart';


class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final String npm = '2306203236'; 
  final String name = 'Kadek Savitri'; 
  final String className = 'PBP A';


    final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.shop,Colors.brown),
    ItemHomepage("Tambah Produk", Icons.add, const Color.fromARGB(255, 185, 119, 61)),
    ItemHomepage("Logout", Icons.logout, const Color.fromARGB(255, 190, 162, 110)),
     ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Glowmoure',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),

        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),

      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            const SizedBox(height: 16.0),
            Center(
              child: Column(

                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Glowmoure',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),

                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    shrinkWrap: true,

                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {

  final String title;  
  final String content; 

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5, // menyesuaikan dengan lebar device yang digunakan.
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
          ],
        ),
      ),
    );
  }
}

 
