<?php

namespace Zanimaux\ZanimauxBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Journee
 *
 * @ORM\Table(name="journee")
 * @ORM\Entity
 */
class Journee
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_journee", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idJournee;

    /**
     * @var string
     *
     * @ORM\Column(name="date", type="string", length=255, nullable=false)
     */
    private $date;

    /**
     * @var integer
     *
     * @ORM\Column(name="nbr_rdv", type="integer", nullable=false)
     */
    private $nbrRdv;


}

