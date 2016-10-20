<?php

namespace Fede\CRUDBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('FedeCRUDBundle:Default:index.html.twig');
    }
}
