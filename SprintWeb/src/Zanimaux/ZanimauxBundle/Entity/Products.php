<?php

namespace Zanimaux\ZanimauxBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Products
 *
 * @ORM\Table(name="products")
 * @ORM\Entity
 */
class Products
{
    /**
     * @var integer
     *
     * @ORM\Column(name="ProductID", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $productid;

    /**
     * @var string
     *
     * @ORM\Column(name="Title", type="string", length=45, nullable=true)
     */
    private $title;

    /**
     * @var float
     *
     * @ORM\Column(name="Price", type="float", precision=5, scale=2, nullable=true)
     */
    private $price;

    /**
     * @var string
     *
     * @ORM\Column(name="Description", type="text", length=65535, nullable=true)
     */
    private $description;

    /**
     * @var string
     *
     * @ORM\Column(name="Video", type="string", length=45, nullable=true)
     */
    private $video;

    /**
     * @var string
     *
     * @ORM\Column(name="Platform", type="string", length=255, nullable=true)
     */
    private $platform;

    /**
     * @var string
     *
     * @ORM\Column(name="Cover", type="string", length=55, nullable=true)
     */
    private $cover;

    /**
     * @var string
     *
     * @ORM\Column(name="Image1", type="string", length=55, nullable=true)
     */
    private $image1;

    /**
     * @var string
     *
     * @ORM\Column(name="Image2", type="string", length=55, nullable=true)
     */
    private $image2;

    /**
     * @var string
     *
     * @ORM\Column(name="Image3", type="string", length=55, nullable=true)
     */
    private $image3;

    /**
     * @var string
     *
     * @ORM\Column(name="Image4", type="string", length=55, nullable=true)
     */
    private $image4;

    /**
     * @var string
     *
     * @ORM\Column(name="ExeFile", type="string", length=200, nullable=true)
     */
    private $exefile;


}

