import 'package:flutter/material.dart';

class StoreStoriesScreen extends StatelessWidget {
  const StoreStoriesScreen({super.key});

  final List<Map<String, String>> storeItems = const [
    {"name": "Shoes", "image": "https://via.placeholder.com/150"},
    {"name": "Bag", "image": "https://via.placeholder.com/150"},
    {"name": "Watch", "image": "https://via.placeholder.com/150"},
    {"name": "Sunglasses", "image": "https://via.placeholder.com/150"},
    {"name": "Hat", "image": "https://via.placeholder.com/150"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: storeItems.length + 1, // +1 for the "Add Story" bubble
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              itemBuilder: (context, index) {
                if (index == 0) {
                  // First item: Create Story
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Add your story action
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                                style: BorderStyle.solid, // Flutter doesn't support dotted directly
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Your Story",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                } else {
                  // Normal stories
                  final item = storeItems[index - 1];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigate to product detail or open story
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: const LinearGradient(
                                colors: [Colors.pink, Colors.orange],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(item['image']!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          item['name']!,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Other Store Content Goes Here...',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
