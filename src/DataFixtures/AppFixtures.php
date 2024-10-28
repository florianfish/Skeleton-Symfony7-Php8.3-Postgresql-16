<?php

namespace App\DataFixtures;

use App\Factory\AuthorFactory;
use App\Factory\BookFactory;
use App\Factory\EditorFactory;
use App\Factory\UserFactory;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        UserFactory::createMany(5);
        AuthorFactory::createMany(50);
        EditorFactory::createMany(20);

        BookFactory::createMany(100, [
            'authors' => AuthorFactory::randomRange(1, 2),
        ]);
    }
}
