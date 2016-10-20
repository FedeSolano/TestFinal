<?php

namespace Fede\TwigBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('FedeTwigBundle:Default:index.html.twig');
    }
    public function sousmenuAction()
    {
        return $this->render('FedeTwigBundle:Default:menu.html.twig');
    }
    public function conditionsAction()
    {
        return $this->render('FedeTwigBundle:Default:conditions.html.twig');
    }
    public function bouclesAction($uno,$dos)
    {
        $letableau = array("02214",20=>"27","  38   ");
        
        return $this->render('FedeTwigBundle:Default:boucles.html.twig', array("nb1"=>$uno,"nb2"=>$dos,"tableau"=>$letableau));
    }
}
