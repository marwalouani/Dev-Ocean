<?php

namespace Zanimaux\ZanimauxBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Demande
 *
 * @ORM\Table(name="demande", indexes={@ORM\Index(name="id_animal", columns={"id_animal"}), @ORM\Index(name="id_personne", columns={"id_personne"})})
 * @ORM\Entity
 */
class Demande
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_demande", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idDemande;

    /**
     * @var string
     *
     * @ORM\Column(name="etat", type="string", length=20, nullable=false)
     */
    private $etat;

    /**
     * @var string
     *
     * @ORM\Column(name="contenu", type="string", length=20, nullable=false)
     */
    private $contenu;

    /**
     * @var \Animal
     *
     * @ORM\ManyToOne(targetEntity="Animal")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="id_animal", referencedColumnName="id_animal")
     * })
     */
    private $idAnimal;

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

