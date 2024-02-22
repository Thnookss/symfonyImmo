<?php

namespace App\Entity\Traits;

use Doctrine\ORM\Mapping as ORM;

trait TimeTrait{
    #[ORM\Column(type: 'datetime_immutable', nullable: true, options: ['default' => 'CURRENT_TIMESTAMP'])]
    private \DateTimeInterface $createdAt;
}