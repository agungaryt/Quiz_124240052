import 'package:flutter/material.dart';
import 'detail.dart';
import 'login.dart';
import '../models/culinaryModel.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar makanan"),
        backgroundColor: const Color.fromARGB(255, 0, 0, 195),
        foregroundColor: Colors.white,

        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: "Logout",
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(), 
                ),
              );

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Berhasil logout"),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: culinaryList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(culinaryList[index].name),
            subtitle: Text(
              "${culinaryList[index].category} asal ${culinaryList[index].origin}",
            ),
            leading: Image.network(culinaryList[index].imageUrl),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailPage(culinary: culinaryList[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
