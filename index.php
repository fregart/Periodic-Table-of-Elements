<!DOCTYPE html>

<?php

function HandleXmlError($errno, $errstr, $errfile, $errline)
{
	echo $errno." ".$errstr."<br>";
}

	$file = 'Periodic Table of Elements.xml';

	$dom = new DomDocument;
	$dom->preserveWhiteSpace = FALSE;
	
	set_error_handler('HandleXmlError');
	$loadstate=$dom->load($file);
	if($loadstate){
			$validatestate=$dom->validate();	
			if($validatestate){
					echo "<span class='alert success'>Validation successful!</span></br></br>";
					
					$xslDoc = new DOMDocument();
					$xslDoc->load("stylesheet.xsl");

					$xmlDoc = new DOMDocument();
					$xmlDoc->load($file);
	
					$proc = new XSLTProcessor();
					$proc->importStylesheet($xslDoc);
					echo $proc->transformToXML($xmlDoc);
					
			}else{
					echo "<span class='alert warning'>Validation test failed!</span></br></br>";
			}			
	}else{
			echo "<span class='alert danger'>Well-formedness test failed!</span></br></br>";	
	}
	restore_error_handler();
	
?>