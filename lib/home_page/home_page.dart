import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail_page/detail_page.dart';
import 'package:flutter_application_1/widgets/photo_profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(
            //   height: 60,
            //   width: 60,
            //   decoration: const BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: Colors.lightGreen,
            //   ),
            // ),
            const PhotoProfile(),
            const SizedBox(height: 16),
            const Text('Fadil'),
            const SizedBox(height: 80),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailPage(),
                    ));
              },
              child: const Text('Navigate to Detail'),
            ),
          ],
        ),
      ),
    );
  }
}
