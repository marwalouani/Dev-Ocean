<?php

namespace Zanimaux\ZanimauxBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Personne
 *
 * @ORM\Table(name="personne")
 * @ORM\Entity
 */
class Personne
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_personne", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idPersonne;

    /**
     * @var string
     *
     * @ORM\Column(name="nom", type="string", length=255, nullable=true)
     */
    private $nom;

    /**
     * @var string
     *
     * @ORM\Column(name="prenom", type="string", length=255, nullable=true)
     */
    private $prenom;

    /**
     * @var string
     *
     * @ORM\Column(name="numero_tel", type="string", length=255, nullable=true)
     */
    private $numeroTel;

    /**
     * @var string
     *
     * @ORM\Column(name="mail", type="string", length=255, nullable=true)
     */
    private $mail;

    /**
     * @var string
     *
     * @ORM\Column(name="login", type="string", length=255, nullable=true)
     */
    private $login;

    /**
     * @var string
     *
     * @ORM\Column(name="password", type="string", length=255, nullable=true)
     */
    private $password;

    /**
     * @var string
     *
     * @ORM\Column(name="adresse", type="string", length=255, nullable=true)
     */
    private $adresse;

    /**
     * @var string
     *
     * @ORM\Column(name="role", type="string", length=255, nullable=true)
     */
    private $role;

    /**
     * @var integer
     *
     * @ORM\Column(name="nombre_bon_de_reduction", type="integer", nullable=true)
     */
    private $nombreBonDeReduction;

    /**
     * @var string
     *
     * @ORM\Column(name="codeConfimation", type="string", length=255, nullable=true)
     */
    private $codeconfimation;

    /**
     * @var integer
     *
     * @ORM\Column(name="enabled", type="integer", nullable=true)
     */
    private $enabled = '0';

    /**
     * @var string
     *
     * @ORM\Column(name="photoprofilpath", type="string", length=255, nullable=true)
     */
    private $photoprofilpath;

    /**
     * @var string
     *
     * @ORM\Column(name="date_naissance", type="string", length=255, nullable=true)
     */
    private $dateNaissance;

    /**
     * @var string
     *
     * @ORM\Column(name="sexe", type="string", length=255, nullable=true)
     */
    private $sexe;

    /**
     * @var integer
     *
     * @ORM\Column(name="jetons", type="integer", nullable=false)
     */
    private $jetons = '50';


}

