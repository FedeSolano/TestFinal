<?php

namespace Fede\RacineBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('FedeRacineBundle:Default:index.html.twig');
    }
}
