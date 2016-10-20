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
}
