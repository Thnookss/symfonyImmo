<?php

namespace App\Controller\Admin;

use App\Entity\Property;
use App\Form\PictureType;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\NumberField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class PropertyCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Property::class;
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->onlyOnIndex(),
            TextField::new('title'),
            AssociationField::new('category'),
            TextEditorField::new('description')->hideOnIndex(),
            DateField::new('createdAt')->onlyOnIndex(),
            DateField::new('updatedAt')->onlyOnIndex(),
            NumberField::new('price'),
            CollectionField::new('Pictures')
                ->setEntryType(PictureType::class)
                ->onlyOnForms(),
        ];
    }
}
