<?php
	try {
		//Create a DI
		$di = new Phalcon\DI\FactoryDefault();

		//Load ini file
		$config = new \Phalcon\Config\Adapter\Ini('../app/config/application.ini');
    	$di->set('config', $config);
    	
		//Set up our views
		$di->set(’view’, function(){
			$view = new \Phalcon\Mvc\View();
			$view->setViewsDir(’../app/views/’);
			return $view;
		});

		//Our autoloaders
		$loader = new \Phalcon\Loader();
		$loader->registerDirs(array(
			'../app/controllers/',
			'../app/models/'
		))->register();

		//Initialize our application
		$application = new \Phalcon\Mvc\Application($di);
		echo $application->handle()->getContent();
	} catch(\Phalcon\Exception $e) {
		echo "PhalconException: ", $e->getMessage();
	}
?>