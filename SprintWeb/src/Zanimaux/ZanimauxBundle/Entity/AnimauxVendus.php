<?php

namespace Zanimaux\ZanimauxBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AnimauxVendus
 *
 * @ORM\Table(name="animaux_vendus")
 * @ORM\Entity
 */
class AnimauxVendus
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_animal", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idAnimal;

    /**
     * @var string
     *
     * @ORM\Column(name="image", type="string", length=255, nullable=false)
     */
    private $image;

    /**
     * @var string
     *
     * @ORM\Column(name="espece", type="string", length=255, nullable=false)
     */
    private $espece;

    /**
     * @var string
     *
     * @ORM\Column(name="race", type="string", length=255, nullable=false)
     */
    private $race;

    /**
     * @var integer
     *
     * @ORM\Column(name="age", type="integer", nullable=false)
     */
    private $age;

    /**
     * @var string
     *
     * @ORM\Column(name="taille", type="string", length=255, nullable=false)
     */
    private $taille;

    /**
     * @var integer
     *
     * @ORM\Column(name="prix_de_vente", type="integer", nullable=false)
     */
    private $prixDeVente;

    /**
     * @var string
     *
     * @ORM\Column(name="sexe", type="string", length=255, nullable=false)
     */
    private $sexe;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="string", length=255, nullable=false)
     */
    private $description;


}

