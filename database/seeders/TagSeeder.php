<?php

namespace Database\Seeders;

use App\Models\Tag;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class TagSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $tags = [
            // Technology
            'Artificial Intelligence',
            'Machine Learning',
            'Quantum Computing',
            '5G Technology',
            'Blockchain',
            'Augmented Reality',
            'Virtual Reality',
            'Internet of Things',
            'Cybersecurity',
            'Data Science',
            'Cloud Computing',
            'Big Data',
            'Mobile Development',
            'Software Engineering',
            'Tech Innovation',
            'Smart Devices',
            'Wearable Technology',
            'Digital Transformation',
            'Smart Cities',
            'Smart Home',

            // Lifestyle
            'Minimalism',
            'Mindfulness',
            'Mental Health',
            'Fitness Journey',
            'Sustainable Living',
            'Personal Growth',
            'Work-Life Balance',
            'Productivity Hacks',
            'Motivation',
            'Healthy Habits',
            'Digital Detox',
            'Self Care',
            'Yoga',
            'Healthy Lifestyle',
            'Time Management',
            'Stress Relief',
            'Positive Thinking',
            'Life Hacks',
            'Goal Setting',
            'Journaling',

            // Sports & Fitness
            'Football',
            'Basketball',
            'Running',
            'Swimming',
            'Gym Workouts',
            'Strength Training',
            'Cycling',
            'Martial Arts',
            'Pilates',
            'CrossFit',
            'Outdoor Adventures',
            'Rock Climbing',
            'Triathlon',
            'Endurance Training',
            'HIIT Workouts',
            'Sports Nutrition',
            'Tennis',
            'Golf',
            'Track and Field',
            'Boxing',

            // Food & Recipes
            'Vegan Recipes',
            'Healthy Eating',
            'Quick Recipes',
            'Comfort Food',
            'Meal Prep',
            'Keto Diet',
            'Low Carb',
            'Gluten-Free',
            'Food Pairings',
            'Desserts',
            'Smoothie Bowls',
            'Baking',
            'International Cuisine',
            'Mediterranean Diet',
            'Paleo Recipes',
            'Farm-to-Table',
            'Homemade Sauces',
            'Brunch Ideas',
            'Vegetarian Meals',
            'Juicing',

            // Gaming
            'Esports',
            'PC Gaming',
            'Console Gaming',
            'Mobile Games',
            'Strategy Games',
            'Adventure Games',
            'RPG Games',
            'FPS Games',
            'Multiplayer Games',
            'VR Gaming',
            'Game Development',
            'Indie Games',
            'Gaming News',
            'Online Gaming',
            'Retro Games',
            'Board Games',
            'Puzzle Games',
            'Action Games',
            'Simulation Games',
            'Fantasy Games',

            // History
            'Ancient Civilizations',
            'World Wars',
            'Renaissance Period',
            'Medieval History',
            'Industrial Revolution',
            'Cold War',
            'Modern History',
            'Historical Figures',
            'Ancient Egypt',
            'Greek Mythology',
            'Roman Empire',
            'Viking History',
            'World History',
            'Colonialism',
            'The Great Depression',
            'Revolutions',
            'Historical Events',
            'American History',
            'Cultural History',
            'Historical Discoveries',
        ];

        foreach($tags as $tag) {
            Tag::create([
                'name' => $tag,
                'slug' => Str::slug($tag),
            ]);
        }
    }
}
