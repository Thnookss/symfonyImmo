<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class UserFixtures extends Fixture
{
    public function __construct( private UserPasswordHasherInterface $passwordEncoder)
    {

    }
    public function load(ObjectManager $manager): void
    {
        // $product = new Product();
        // $manager->persist($product);

        for($i = 0; $i < 2; $i++) {
            $user = new User();
            $user->setEmail('test' . $i . '@free.fr');
            $user->setPassword($this->passwordEncoder->hashPassword($user, '0000' . $i));
            $user->setIsVerified(true);
            $manager->persist($user);
        }

        $manager->flush();
    }
}
