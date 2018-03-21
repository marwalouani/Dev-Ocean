<?php

namespace Zanimaux\ZanimauxBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('ZanimauxZanimauxBundle:Default:index.html.twig');
    }
    public function layoutAction()
    {
        return $this->render('ZanimauxZanimauxBundle::layout.html.twig');
    }

    public function AccueilAction()
    {
        return $this->render('ZanimauxZanimauxBundle:template:index.html.twig');
    }
    public function ProfilAction()
    {
        return $this->render('ZanimauxZanimauxBundle:template:profils.html.twig');
    }
    public function AdoptionAction()
    {
        return $this->render('ZanimauxZanimauxBundle:template:adoption.html.twig');
    }
    public function ProduitAction()
    {
        return $this->render('ZanimauxZanimauxBundle:template:produit.html.twig');
    }
    public function CommandeAction()
    {
        return $this->render('ZanimauxZanimauxBundle:template:commande.html.twig');
    }
    public function QuizbAction()
    {
        return $this->render('ZanimauxZanimauxBundle:template:quiz.html.twig');
    }
    public function BlogAction()
    {
        return $this->render('ZanimauxZanimauxBundle:template:blog.html.twig');
    }
    public function PromotionAction()
    {
        return $this->render('ZanimauxZanimauxBundle:template:promotion.html.twig');
    }
    public function LivraisonAction()
    {
        return $this->render('ZanimauxZanimauxBundle:template:livraison.html.twig');
    }
    public function ZanimauxAction()
    {
        return $this->render('ZanimauxZanimauxBundle:templatefront:indexfront.html.twig');
    }
    public function RechercherAction()
    {
        return $this->render('ZanimauxZanimauxBundle:templatefront:rechercher.html.twig');
    }

    public function AdopterAction()
    {
        return $this->render('ZanimauxZanimauxBundle:templatefront:adopter.html.twig');
    }
    public function AdhererAction()
    {
        return $this->render('ZanimauxZanimauxBundle:templatefront:adherer.html.twig');
    }
    public function BloggerAction()
    {
        return $this->render('ZanimauxZanimauxBundle:templatefront:Blogger.html.twig');
    }
    public function AproposAction()
    {
        return $this->render('ZanimauxZanimauxBundle:templatefront:A propos.html.twig');
    }
    public function ContactAction()
    {
        return $this->render('ZanimauxZanimauxBundle:templatefront:Contact.html.twig');
    }
    public function QuizAction()
    {
        return $this->render('ZanimauxZanimauxBundle:templatefront:Quiz.html.twig');
    }


}
