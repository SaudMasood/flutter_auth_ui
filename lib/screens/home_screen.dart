import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      
              const Text(
                "Welcome 👋",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
      
              const SizedBox(height: 8),
      
              const Text(
                "Flutter Auth UI",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
      
              const SizedBox(height: 25),
      
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Icon(
                    Icons.flutter_dash,
                    color: Colors.white,
                    size: 90,
                  ),
                ),
              ),
      
              const SizedBox(height: 30),
      
              const Text(
                "Categories",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
      
              const SizedBox(height: 15),
      
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  categoryCard(Icons.phone_android, "Mobile"),
                  categoryCard(Icons.laptop, "Laptop"),
                  categoryCard(Icons.watch, "Watch"),
                ],
              ),
      
              const SizedBox(height: 30),
      
              const Text(
                "Features",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
      
              const SizedBox(height: 15),
      
              featureCard(
                Icons.security,
                "Secure Login",
                "User authentication UI",
              ),
      
              const SizedBox(height: 15),
      
              featureCard(
                Icons.design_services,
                "Modern Design",
                "Clean Flutter interface",
              ),
      
              const SizedBox(height: 15),
      
              featureCard(
                Icons.speed,
                "Fast Performance",
                "Built using Flutter",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryCard(IconData icon, String title) {
    return Container(
      width: 95,
      height: 95,
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 35,
          ),
          const SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }

  Widget featureCard(IconData icon, String title, String subtitle) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}