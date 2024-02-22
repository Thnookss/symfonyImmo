<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactType;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Routing\Attribute\Route;

class ContactController extends AbstractController
{

    public function __construct(private MailerInterface $mailer) {

    }

    #[Route('/contact', name: 'app_contact')]
    public function index(Request $request): Response
    {

        $contact = new Contact();
        $form = $this->createForm(ContactType::class, $contact);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            //dd($form->get('email')->getData());
            $email = (new TemplatedEmail())
                ->from($form->get('email')->getData())
                ->to('admin@test.test')
                ->subject('Contact form submitted')
                ->htmlTemplate('email/contact.html.twig')
                ->context([
                    'name' => $form->get('name')->getData(),
                    'mail' => $form->get('email')->getData(),
                    'phone' => $form->get('phone')->getData(),
                    'message' => $form->get('message')->getData()
                ]);
            $this->mailer->send($email);
            $this->addFlash('success', 'Your message was sent successfully');
            return $this->redirectToRoute('app_contact');
        }

        return $this->render('contact/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
