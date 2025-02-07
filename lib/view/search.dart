import 'package:flutter/material.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({super.key});

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            const SizedBox(width: 10),
            const Text("Where do you want to go?"),
          ],
        ),
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Location Input
              TextField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  labelText: 'Enter Location ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Date Input
              TextField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.calendar_month),
                  labelText: 'Select Date',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Search Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff4966F0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Search",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Image
              Center(
                child: Image.asset(
                  'assets/triply_search.png',
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
