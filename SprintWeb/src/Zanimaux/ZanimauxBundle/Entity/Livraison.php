<?php

namespace Zanimaux\ZanimauxBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Livraison
 *
 * @ORM\Table(name="livraison", indexes={@ORM\Index(name="id_commande", columns={"id_commande"}), @ORM\Index(name="id_personne", columns={"id_personne"}), @ORM\Index(name="id_commande_2", columns={"id_commande"})})
 * @ORM\Entity
 */
class Livraison
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_livraison", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idLivraison;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_commande", type="integer", nullable=false)
     */
    private $idCommande;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_personne", type="integer", nullable=false)
     */
    private $idPersonne;

    /**
     * @var string
     *
     * @ORM\Column(name="type_livraison", type="string", length=255, nullable=false)
     */
    private $typeLivraison;

    /**
     * @var integer
     *
     * @ORM\Column(name="prix_livraison", type="integer", nullable=false)
     */
    private $prixLivraison;


}

