<?php

namespace Zanimaux\ZanimauxBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Toilettage
 *
 * @ORM\Table(name="toilettage", indexes={@ORM\Index(name="id_personne", columns={"id_personne"})})
 * @ORM\Entity
 */
class Toilettage
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_rdv", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idRdv;

    /**
     * @var string
     *
     * @ORM\Column(name="date_rdv", type="string", length=255, nullable=false)
     */
    private $dateRdv;

    /**
     * @var string
     *
     * @ORM\Column(name="nom", type="string", length=255, nullable=false)
     */
    private $nom;

    /**
     * @var string
     *
     * @ORM\Column(name="prenom", type="string", length=255, nullable=false)
     */
    private $prenom;

    /**
     * @var integer
     *
     * @ORM\Column(name="numero_tel", type="bigint", nullable=false)
     */
    private $numeroTel;

    /**
     * @var string
     *
     * @ORM\Column(name="type_service", type="string", length=255, nullable=false)
     */
    private $typeService;

    /**
     * @var string
     *
     * @ORM\Column(name="governorat", type="string", length=255, nullable=false)
     */
    private $governorat;

    /**
     * @var string
     *
     * @ORM\Column(name="etat", type="string", length=255, nullable=false)
     */
    private $etat;

    /**
     * @var \Personne
     *
     * @ORM\ManyToOne(targetEntity="Personne")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_personne", referencedColumnName="id_personne")
     * })
     */
    private $idPersonne;


}

