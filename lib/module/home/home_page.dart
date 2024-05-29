import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunmolor_iot/helper/dimension.dart';
import 'package:sunmolor_iot/module/kendaraan/kendaraan_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isVehicleOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Vehicle",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Add your notification logic here
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/svg/home.svg",
            height: 200,
          ),
          SizedBox(height: Dimensions.size30),
          const Text(
            'Connected To\nVespa LX 125',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2A7E3E),
            ),
          ),
          SizedBox(height: Dimensions.size20),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildIconContainer(Icons.power_settings_new_outlined),
                buildIconContainer(Icons.settings_power_outlined),
                buildIconContainer(Icons.lock),
                buildIconContainer(Icons.lock_open_outlined),
                buildIconContainer(Icons.lightbulb_outline),
                buildIconContainer(Icons.volume_up),
              ],
            ),
          ),
          SizedBox(height: Dimensions.size20),
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.red,
                    size: 35,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Ciapus, Tamansari,\nIndonesia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.size25),
              Container(
                width: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/images/maps.png",
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: Dimensions.size20),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VehiclePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2A7E3E),
                textStyle: const TextStyle(fontSize: 15),
                minimumSize:
                    const Size(double.infinity, 50), // Full width button
              ),
              child: const Text(
                'CEK KONDISI KENDARAAN',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIconContainer(IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      child: IconButton(
        icon: Icon(icon),
        iconSize: 25,
        onPressed: () {
          // Add functionality here
        },
      ),
    );
  }
}
