<?php

namespace Zanimaux\ZanimauxBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Messages
 *
 * @ORM\Table(name="messages")
 * @ORM\Entity
 */
class Messages
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_sender", type="integer", nullable=false)
     */
    private $idSender;

    /**
     * @var integer
     *
     * @ORM\Column(name="id_reciver", type="integer", nullable=false)
     */
    private $idReciver;

    /**
     * @var string
     *
     * @ORM\Column(name="message_text", type="string", length=255, nullable=false)
     */
    private $messageText;

    /**
     * @var string
     *
     * @ORM\Column(name="etat", type="string", length=255, nullable=false)
     */
    private $etat;

    /**
     * @var string
     *
     * @ORM\Column(name="date_envoi", type="string", length=255, nullable=true)
     */
    private $dateEnvoi;


}

