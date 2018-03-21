<?php

namespace Zanimaux\ZanimauxBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * BonDeReduction
 *
 * @ORM\Table(name="bon_de_reduction", indexes={@ORM\Index(name="id_produit", columns={"id_produit"}), @ORM\Index(name="id_client", columns={"id_personne"})})
 * @ORM\Entity
 */
class BonDeReduction
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_bon_reduction", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idBonReduction;

    /**
     * @var integer
     *
     * @ORM\Column(name="numero_bon_reduction", type="integer", nullable=false)
     */
    private $numeroBonReduction;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_produit", type="integer", nullable=true)
     */
    private $idProduit;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_personne", type="integer", nullable=true)
     */
    private $idPersonne;

    /**
     * @var string
     *
     * @ORM\Column(name="valeur", type="string", length=255, nullable=true)
     */
    private $valeur;

    /**
     * @var string
     *
     * @ORM\Column(name="etat", type="string", length=20, nullable=true)
     */
    private $etat;

    /**
     * @var string
     *
     * @ORM\Column(name="utiliser", type="string", length=255, nullable=false)
     */
    private $utiliser;


}

