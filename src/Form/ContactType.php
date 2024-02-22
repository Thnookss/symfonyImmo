<?php
namespace App\Form;

use App\Entity\Contact;
use PHPUnit\Framework\Constraint\IsTrue;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\Validator\Constraints\Regex;

class ContactType extends AbstractType {
    public function buildForm(FormBuilderInterface $builder, array $options): void {
        $builder
            ->add('name', TextType::class, [
                'attr' => [
                    'placeholder' => 'Your name',
                    'class' => 'form-control'
                ],
                'constraints' => [
                    new NotBlank([
                        'message' => 'Please enter your name'
                    ]),
                    new length([
                        'min' => 2,
                        'minMessage' => 'Your name should be at least {{ limit }} characters',
                        'max' => 255,
                        'maxMessage' => 'Your name should be at most {{ limit }} characters'
                    ]),
                    new regex([
                        'pattern' => '/^[a-zA-Z\s]*$/',
                        'message' => 'Your name should contain only letters and spaces'
                    ])
                ]
            ])

            ->add('email', EmailType::class, [
                'attr' => [
                    'placeholder' => 'Your email',
                    'class' => 'form-control'
                ],
                'constraints' => [
                    new NotBlank([
                        'message' => 'Please enter your email'
                    ]),
                    new length([
                        'min' => 2,
                        'minMessage' => 'Your email should be at least {{ limit }} characters',
                        'max' => 255,
                        'maxMessage' => 'Your email should be at most {{ limit }} characters'
                    ])
                ]
            ])

            ->add('phone', TextType::class, [
                'attr' => [
                    'placeholder' => 'Your phone',
                    'class' => 'form-control'
                ],
                'constraints' => [
                    new NotBlank([
                        'message' => 'Please enter your phone'
                    ])
                ],
                'help' => 'Please enter your phone in the following format: +1234567890',
                'help_attr' => [
                    'class' => 'form-text text-muted'
                    ]
            ])

            ->add('message', TextareaType::class, [
                    'attr' => [
                        'placeholder' => 'Your message',
                        'class' => 'form-control'
                    ],
                ]
            )
            ->add('submit', SubmitType::class, [
                'label' => 'Send',
                'attr' => [
                    'class' => 'btn btn-primary'
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void {
        $resolver->setDefaults([
            'data_class' => Contact::class,
        ]);
    }
}