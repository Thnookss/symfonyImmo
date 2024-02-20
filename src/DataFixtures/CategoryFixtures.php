<?php

namespace App\DataFixtures;

use App\Entity\Category;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class CategoryFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $category = [
            1 => [
                'name' => 'Biens en location',
                'slug' => 'biens-en-location',
            ],
            2 => [
                'name' => 'Biens en vente',
                'slug' => 'biens-en-vente',
            ],
            3 => [
                'name' => 'Immobilier neuf',
                'slug' => 'immobilier-neuf',
            ],
            4 => [
                'name' => 'Immobilier de prestige',
                'slug' => 'immobilier-de-prestige',
            ],
            5 => [
                'name' => 'Terrains',
                'slug' => 'terrains',
            ],
            6 => [
                'name' => 'Bureaux & Commerces',
                'slug' => 'bureaux-commerces',
            ],
        ];

        foreach ($category as $key => $value) {
            $category = new Category();
            $category->setName($value['name']);
            $category->setSlug($value['slug']);
            $manager->persist($category);
            $this->addReference('category_' . $key, $category);
        }

        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
