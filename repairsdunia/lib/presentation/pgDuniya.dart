import 'package:flutter/material.dart';
import 'package:repairsdunia/widgets/PGDuniyaWidgets/genderbtn.dart';
import 'package:repairsdunia/widgets/PGDuniyaWidgets/professionbtn.dart';
import 'package:repairsdunia/widgets/PGDuniyaWidgets/roomOptionbtn.dart';
import 'package:repairsdunia/widgets/PGDuniyaWidgets/searchfield.dart';
import 'package:repairsdunia/widgets/floatingbtn.dart';

class PGDuniyaScreen extends StatefulWidget {
  const PGDuniyaScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PGDuniyaScreenState createState() => _PGDuniyaScreenState();
}

class _PGDuniyaScreenState extends State<PGDuniyaScreen> {
  String selectedProfession = 'Student';
  String selectedRoom = 'Single room';
  String? selectgender = 'Female';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'PG Duniya',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          floatingicons(const Icon(Icons.people_alt_outlined)),
          floatingicons(const Icon(Icons.favorite_border)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gender Selection
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GenderOptionButton(
                    title: 'Male',
                    isSelected: selectgender == 'Male',
                    onTap: () => setState(() => selectgender = 'Male'),
                  ),
                  GenderOptionButton(
                    title: 'Female',
                    isSelected: selectgender == 'Female',
                    onTap: () => setState(() => selectgender = 'Female'),
                  ),
                  GenderOptionButton(
                    title: 'Others',
                    isSelected: selectgender == 'Others',
                    onTap: () => setState(() => selectgender = 'Others'),
                  )
                ],
              ),
              const SizedBox(height: 20),

              // Search city
              const SearchField(
                  hintText: 'Search city..', icon: Icons.arrow_drop_down),
              const SizedBox(height: 10),

              // Search landmark and area
              const SearchField(
                  hintText: 'Search landmark and area',
                  icon: Icons.location_on_outlined),

              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.gps_fixed, size: 16),
                  SizedBox(width: 5),
                  Text(
                    'Use my current location',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Select Profession Section
              const Text(
                'Select your profession:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 10),

              Wrap(
                spacing: 5,
                runSpacing: 10,
                children: [
                  ProfessionButton(
                    title: 'Student',
                    isSelected: selectedProfession == 'Student',
                    onTap: () => setState(() => selectedProfession = 'Student'),
                  ),
                  ProfessionButton(
                    title: 'Working',
                    isSelected: selectedProfession == 'Working',
                    onTap: () => setState(() => selectedProfession = 'Working'),
                  ),
                  ProfessionButton(
                    title: 'Non working',
                    isSelected: selectedProfession == 'Non working',
                    onTap: () =>
                        setState(() => selectedProfession = 'Non working'),
                  ),
                  ProfessionButton(
                    title: 'Delivery boy',
                    isSelected: selectedProfession == 'Delivery boy',
                    onTap: () =>
                        setState(() => selectedProfession = 'Delivery boy'),
                  ),
                  ProfessionButton(
                    title: 'Entrepreneur',
                    isSelected: selectedProfession == 'Entrepreneur',
                    onTap: () =>
                        setState(() => selectedProfession = 'Entrepreneur'),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Book Now Section
              const Text(
                'Book now',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const Text(
                'Select your mode for booking Paying guest.',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 10),

              // Room options
              RoomOptionButton(
                title: 'Single room',
                isSelected: selectedRoom == 'Single room',
                onTap: () => setState(() => selectedRoom = 'Single room'),
              ),
              const SizedBox(
                height: 10,
              ),
              RoomOptionButton(
                title: 'Double sharing',
                isSelected: selectedRoom == 'Double sharing',
                onTap: () => setState(() => selectedRoom = 'Double sharing'),
              ),
              const SizedBox(
                height: 10,
              ),
              RoomOptionButton(
                title: 'Triple sharing',
                isSelected: selectedRoom == 'Triple sharing',
                onTap: () => setState(() => selectedRoom = 'Triple sharing'),
              ),
              const SizedBox(
                height: 10,
              ),
              RoomOptionButton(
                title: 'Multiple sharing',
                isSelected: selectedRoom == 'Multiple sharing',
                onTap: () => setState(() => selectedRoom = 'Multiple sharing'),
              ),
              const SizedBox(height: 20),

              // Proceed Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add your navigation logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.black, // Set background color to grey
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.8, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Proceed',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
