import 'package:flutter/material.dart';
import 'package:ui/NavBar.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        centerTitle: true,
        title: const Text('Food Delivery App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dishes for you',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dishList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.network(
                          dishList[index].imageUrl,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          dishList[index].name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Restaurants',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: restaurantList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(
                      restaurantList[index].imageUrl,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(restaurantList[index].name),
                    subtitle: Text(restaurantList[index].location),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'Delivery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Dish {
  final String imageUrl;
  final String name;

  Dish({required this.imageUrl, required this.name});
}

class Restaurant {
  final String imageUrl;
  final String name;
  final String location;

  Restaurant({required this.imageUrl, required this.name, required this.location});
}

List<Dish> dishList = [
  Dish(
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAzuqpcU7sOa042TEd5uslX0BcilsTwP6i2A',
    name: 'Pav Bhaji',
  ),
  Dish(
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGitE09RBTjcfXtyAx5rTMWiiKpaRbJgrdXA',
    name: 'Paneer Butter Masala',
  ),
  Dish(
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZcfnL_AqQhbmbUToisDVVsTvQ7wrel2iWKg',
    name: 'Pulav',
  ),
  // Add more dishes as needed
];

List<Restaurant> restaurantList = [
  Restaurant(
    imageUrl:
        'https://lh3.googleusercontent.com/p/AF1QipOezEHmta27l1MRalvyPst36uAuV3FYns8mmI5K=s680-w680-h510',
    name: 'Bawarchi Restaurant',
    location: 'Nagpur',
  ),
  Restaurant(
    imageUrl:
        'https://lh5.googleusercontent.com/p/AF1QipPFGAAqujzF9iD4B64O1t2hWOXoPKshB7MnPeEW=w325-h218-n-k-no',
    name: 'Pahunchar The Family Restaurant',
    location: 'Nagpur',
  ),
  Restaurant(
    imageUrl:
        'https://lh3.googleusercontent.com/p/AF1QipOtxniNJMt0iaBIpr419zuaWakwifxev2ocOwM=s680-w680-h510',
    name: 'Habits Restaurant',
    location: 'Nagpur',
  ),
  Restaurant(
    imageUrl:
        'https://lh3.googleusercontent.com/p/AF1QipMWtWwcqKdMwG6ubq6Ya0e-5ENCnfGIG-XTlCvz=s1360-w1360-h1020',
    name: 'Short Order Restaurant',
    location: 'Nagpur',
  ),
  Restaurant(
    imageUrl:
        'https://lh5.googleusercontent.com/p/AF1QipNf_Ktq6T1cuQIXtlSDxhQQ3FC2-ssBiz5nIiG9=w325-h218-n-k-no',
    name: 'Yamazaki Iora Restaurant',
    location: 'Nagpur',
  ),
  Restaurant(
    imageUrl:
        'https://lh3.googleusercontent.com/p/AF1QipMeiJiDGFVj-ukxasfC2XEvmh503PeK6t0WO8qf=s1360-w1360-h1020',
    name: 'Ideal Restaurant',
    location: 'Nagpur',
  ),
  Restaurant(
    imageUrl:
        'https://lh3.googleusercontent.com/p/AF1QipPtZsPguKSKm2Nj9Bqi8Ukn8f2ouHRKMxsdMw_1=s1360-w1360-h1020',
    name: 'Cafe Temptation',
    location: 'Nagpur',
  ),
  Restaurant(
    imageUrl:
        'https://lh5.googleusercontent.com/p/AF1QipNlfrNgc7mF7HyYFzfxBi68IB8FZUxuHPOWVySi=w325-h218-n-k-no',
    name: 'The Nagpur Vintage',
    location: 'Nagpur',
  ),
  // Add more restaurants as needed
];
