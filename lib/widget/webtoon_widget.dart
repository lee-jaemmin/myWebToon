import 'package:flutter/material.dart';
import 'package:mywebtoon/screen/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(title: title, id: id),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7,
                    offset: const Offset(10, 10),
                    color: Colors.black.withOpacity(0.5),
                  ),
                ],
              ),
              width: 250,
              child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Libya_5230_Wan_Caza_Dunes_Luca_Galuzzi_2007.jpg/800px-Libya_5230_Wan_Caza_Dunes_Luca_Galuzzi_2007.jpg"),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
