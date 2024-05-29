import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sunmolor_iot/helper/dimension.dart';

class VehiclePage extends StatefulWidget {
  @override
  State<VehiclePage> createState() => _VehiclePageState();
}

class _VehiclePageState extends State<VehiclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Vehicle Status",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Add your notification logic here
            },
            icon: const Icon(Icons
                .warning_rounded), // You can use any notification icon here
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/svg/repair.svg",
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
          SizedBox(height: Dimensions.size30),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [Text("KM Kendaraan : "), Text("9.876 KM")],
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.size10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [Text("Oil Change : "), Text("12.876 KM")],
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.size10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Jarak Kendaraan : "),
                        Text("Berada Didekat anda")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.size10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Konsumsi bahan bakar : "),
                        Text("20 : 1")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.size10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.warning,
                          color: Colors.red,
                        ),
                        SizedBox(width: Dimensions.size5),
                        const Text("Suhu Kendaraan : "),
                        const Text("98 C")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.size10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [Text("Voltase AKI : "), Text("12,3 Ampere")],
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.size10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Terakhir Service : "),
                        Text("25 Mei 2025")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.size10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Rata rata kecepatan : "),
                        Text("80 KM/Jam")
                      ],
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.size50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.warning,
                      size: 30,
                      color: Colors.red,
                    ),
                    Text("Warning",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("1. Cek Saluran Bensin anda"),
                              SizedBox(
                                height: Dimensions.size5,
                              ),
                              const Text("2. Cek Tegangan Aki"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Dimensions.size25),
              ],
            ),
          ),
          const Spacer(),
          const Text("Last Sync : 29 Mei 2029 : 16.34 PM"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the vehicle information screen or perform an action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2A7E3E),
                textStyle: const TextStyle(fontSize: 15),
                minimumSize:
                    const Size(double.infinity, 50), // Full width button
              ),
              child: const Text(
                'CEK MESIN',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
