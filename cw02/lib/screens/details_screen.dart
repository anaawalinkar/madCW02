import 'package:flutter/material.dart';
import '../models/recipe.dart';

class DetailsScreen extends StatelessWidget {
  final Recipe recipe;

  const DetailsScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
        backgroundColor: Colors.blue.shade700,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Recipe Description
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                recipe.description,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue.shade800,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            
            SizedBox(height: 24),
            
            // Ingredients Section
            Text(
              'Ingredients',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade700,
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: recipe.ingredients.map((ingredient) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: Colors.blue.shade700,
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          ingredient,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                )).toList(),
              ),
            ),
            
            SizedBox(height: 24),
            
            // Instructions Section
            Text(
              'Instructions',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade700,
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: recipe.instructions.asMap().entries.map((entry) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade700,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '${entry.key + 1}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          entry.value,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                )).toList(),
              ),
            ),
            
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}