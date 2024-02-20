<?php

namespace App\Controller;

use App\Repository\PropertyRepository;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class ListingController extends AbstractController
{
    #[Route('/listing/{slug}', name: 'app_listing')]
    public function index(PropertyRepository $property, $slug, PaginatorInterface $paginator, Request $request): Response
    {
        $query = $property->findPropertyByCategory($slug);
        $pagination = $paginator->paginate(
            $query,
            $request->query->getInt('page', 1),
            12
        );
        return $this->render('listing/index.html.twig', [
            'pagination' => $pagination,
        ]);
    }
}
