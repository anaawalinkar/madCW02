import 'package:flutter/material.dart';
import 'details_screen.dart';
import '../models/recipe.dart';

class HomeScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      id: '1',
      name: 'Chocolate Brownies',
      description: 'Chocolate brownies with crispy edges',
      ingredients: [
        '1/2 cup unsalted butter',
        '1 cup granulated sugar',
        '2 large eggs',
        '1 tsp vanilla extract',
        '1/3 cup cocoa powder',
        '1/2 cup all-purpose flour',
        '1/4 tsp salt',
        '1/4 tsp baking powder',
        '1/2 cup chocolate chips'
      ],
      instructions: [
        'Preheat oven to 350°F (175°C). Grease an 8x8 inch baking pan',
        'Melt butter in a saucepan over medium heat',
        'Remove from heat and stir in sugar, eggs, and vanilla',
        'Beat in cocoa, flour, salt, and baking powder',
        'Spread batter into prepared pan and sprinkle with chocolate chips',
        'Bake for 25-30 minutes until edges pull away from pan',
        'Cool completely before cutting into squares'
      ],
    ),
    Recipe(
      id: '2',
      name: 'Chicken Biryani',
      description: 'Indian rice dish with spiced chicken and herbs',
      ingredients: [
        '2 cups basmati rice',
        '500g chicken, cut into pieces',
        '2 large onions, thinly sliced',
        '1 cup yogurt',
        '2 tbsp biryani masala',
        '1 tbsp ginger-garlic paste',
        '4 green chilies',
        '1/2 cup mint leaves',
        '1/2 cup cilantro',
        'Saffron strands soaked in milk',
        '4 tbsp ghee or oil'
      ],
      instructions: [
        'Wash and soak basmati rice for 30 minutes',
        'Marinate chicken with yogurt, biryani masala, and ginger-garlic paste for 2 hours',
        'Fry onions until golden brown and set aside',
        'Cook marinated chicken until 70% done',
        'Parboil rice with whole spices until 70% cooked',
        'Layer rice and chicken in a heavy-bottomed pot',
        'Add fried onions, mint, cilantro, and saffron milk between layers',
        'Cover and cook on low heat for 20 minutes (dum cooking)',
        'Let it rest for 10 minutes before serving'
      ],
    ),
    Recipe(
      id: '3',
      name: 'Thai Basil Fried Rice',
      description: 'Spicy Thai fried rice with holy basil',
      ingredients: [
        '3 cups cooked jasmine rice (day-old)',
        '2 tbsp vegetable oil',
        '3 cloves garlic, minced',
        '2 Thai chilies, chopped',
        '200g chicken or shrimp (optional)',
        '1 bell pepper, diced',
        '1 onion, diced',
        '2 tbsp fish sauce',
        '1 tbsp soy sauce',
        '1 tsp sugar',
        '1 cup holy basil leaves',
        '2 eggs',
        'Lime wedges for serving'
      ],
      instructions: [
        'Heat oil in a wok or large pan over high heat',
        'Add garlic and chilies, stir-fry for 30 seconds until fragrant',
        'Add chicken/shrimp and cook until done (if using)',
        'Push ingredients to one side, crack eggs and scramble',
        'Add bell pepper and onion, stir-fry for 2 minutes',
        'Add cold rice, breaking up any clumps',
        'Season with fish sauce, soy sauce, and sugar',
        'Toss everything together and cook for 3-4 minutes',
        'Turn off heat, stir in basil leaves until wilted',
        'Serve immediately with lime wedges'
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