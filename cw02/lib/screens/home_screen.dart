import 'package:flutter/material.dart';
import 'details_screen.dart';
import '../models/recipe.dart';

class HomeScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      id: '1',
      name: 'Spaghetti Carbonara',
      description: 'Classic Italian pasta dish with creamy sauce',
      ingredients: [
        '200g spaghetti',
        '100g pancetta or guanciale',
        '2 large eggs',
        '50g grated Parmesan cheese',
        'Black pepper, freshly ground',
        'Salt to taste'
      ],
      instructions: [
        'Bring a large pot of salted water to boil and cook spaghetti according to package instructions',
        'While pasta cooks, chop pancetta into small pieces',
        'In a bowl, whisk eggs and Parmesan cheese together',
        'In a large pan, cook pancetta until crispy (no oil needed)',
        'Reserve 1/2 cup pasta water, then drain spaghetti',
        'Add hot spaghetti to the pan with pancetta, remove from heat',
        'Quickly mix in egg and cheese mixture, adding pasta water as needed',
        'Season with black pepper and serve immediately'
      ],
    ),
    Recipe(
      id: '2',
      name: 'Vegetable Stir Fry',
      description: 'Quick and healthy Asian-inspired vegetable dish',
      ingredients: [
        '2 cups mixed vegetables (bell peppers, broccoli, carrots, snap peas)',
        '2 cloves garlic, minced',
        '1 tbsp ginger, grated',
        '2 tbsp soy sauce',
        '1 tbsp olive oil',
        '1 tsp sesame oil',
        'Green onions for garnish'
      ],
      instructions: [
        'Chop all vegetables into bite-sized pieces',
        'Heat olive oil in a wok or large pan over high heat',
        'Add garlic and ginger, stir for 30 seconds until fragrant',
        'Add harder vegetables first (carrots, broccoli), cook for 2 minutes',
        'Add remaining vegetables, stir fry for 3-4 minutes',
        'Add soy sauce and sesame oil, toss to combine',
        'Garnish with chopped green onions and serve with rice'
      ],
    ),
    Recipe(
      id: '3',
      name: 'Chocolate Chip Cookies',
      description: 'Classic homemade chocolate chip cookies',
      ingredients: [
        '2 1/4 cups all-purpose flour',
        '1 tsp baking soda',
        '1 cup unsalted butter, softened',
        '3/4 cup granulated sugar',
        '3/4 cup brown sugar, packed',
        '2 large eggs',
        '2 tsp vanilla extract',
        '2 cups chocolate chips'
      ],
      instructions: [
        'Preheat oven to 375°F (190°C) and line baking sheets with parchment paper',
        'In a medium bowl, whisk together flour and baking soda',
        'In a large bowl, cream together butter and both sugars until light and fluffy',
        'Beat in eggs one at a time, then add vanilla extract',
        'Gradually mix in flour mixture until just combined',
        'Stir in chocolate chips',
        'Drop rounded tablespoons of dough onto prepared baking sheets',
        'Bake for 9-11 minutes until edges are golden brown',
        'Cool on baking sheet for 5 minutes before transferring to wire rack'
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Recipe Book'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 2,
            child: ListTile(
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue.shade700,
                size: 30,
              ),
              title: Text(
                recipe.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                recipe.description,
                style: TextStyle(fontSize: 14),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}