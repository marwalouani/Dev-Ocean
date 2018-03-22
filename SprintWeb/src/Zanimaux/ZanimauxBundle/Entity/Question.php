<?php

namespace Zanimaux\ZanimauxBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Question
 *
 * @ORM\Table(name="question")
 * @ORM\Entity
 */
class Question
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id_question", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idQuestion;

    /**
     * @var string
     *
     * @ORM\Column(name="enonce", type="string", length=255, nullable=false)
     */
    private $enonce;

    /**
     * @var string
     *
     * @ORM\Column(name="niveau_question", type="string", length=20, nullable=false)
     */
    private $niveauQuestion;


}

