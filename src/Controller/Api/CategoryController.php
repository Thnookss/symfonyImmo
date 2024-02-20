<?php

namespace App\Controller\Api;

use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;

class CategoryController extends AbstractController {
    public function index(CategoryRepository $category): Response {
        return $this->render('_partials/_header.html.twig', [
            'categories' => $category->findAll(),
        ]);
    }
}