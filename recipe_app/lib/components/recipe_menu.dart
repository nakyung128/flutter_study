import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        // 1. 메뉴 아이템들의 방향이 수평 방향이기 때문에!
        children: [
          _buildMenuItem(Icons.food_bank, "All"), // 2. 재사용
          SizedBox(width: 25),
          _buildMenuItem(Icons.emoji_food_beverage, "Coffee"), // 3. 재사용
          SizedBox(width: 25),
          _buildMenuItem(Icons.fastfood, "Burger"), // 4. 재사용
          SizedBox(width: 25),
          _buildMenuItem(Icons.local_pizza, "Pizza"), // 5. 재사용
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData mIcon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon, color: Colors.redAccent, size: 30),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          )
        ],
      ),
    );
  } // End of _buildMenuItemS
}
