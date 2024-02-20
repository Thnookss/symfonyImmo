<?php

namespace App\DataFixtures;


use App\Entity\Property;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;

class PropertyFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $faker = \Faker\Factory::create('fr_FR');
        for ($i = 0;$i < 200; $i++){
            $property = new Property();
            $property->setTitle($faker->sentence());
            $property->setPrice($faker->numberBetween(100000, 1000000));
            $property->setDescription($faker->text());
            $property->setCategory($this->getReference('category_' . rand(1, 4)));
            $manager->persist($property);
        }

        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
