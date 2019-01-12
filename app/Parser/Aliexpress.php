<?php
namespace App\Parser;

use Symfony\Component\DomCrawler\Crawler;
use Auth;
Use App\Product;


class Aliexpress implements ParseContract

{
    
    public $crawler;

    public function __construct()
    {
        set_time_limit(0);
        header('Content-Type: text/html; charset=utf-8');
    }

    public function getParse($url = null, $id=null)
    {
		
      
        $file = file_get_contents($url);
        $this->crawler = new Crawler($file);
		$this->crawler->filter('.item')->each(function(Crawler $node, $i){

$risk_price = $node->filter('.price')->count();
 if($risk_price == 0){
  $price = 0;
 }else{
  $price = $node->filter('.price')->text();
 }
 
 $risk_pic = $node->filter('.img')->count();
 if($risk_pic == 0){
  $pic = '';
 }else{
   $pic = $node->filter('img')->attr('src');
   $arr_pic = explode('/', $pic);
$newfile = $_SERVER['DOCUMENT_ROOT'].'/public/uploads/thumb/'.end($arr_pic);
echo $newfile;
$full_pic = 'http:'.$pic;
if (!copy($full_pic, $newfile)) {
    echo "не удалось скопировать $file...\n";
}
 }
    $name = $node->filter('a.product')->attr('title');
 
$obj = new Product;
$obj->name = $name;
$obj->picture = $pic;
$obj->save();  




 
   echo '<h1 class="info">'.$name.'</h1>';
   //echo ' - '.$pic; 
	
	   echo '<img src="http:'.$pic.'">'; 
	   
	   echo '<p class="danger">стоимость---->'.$price.'</p>';
	  echo "<hr />";  
      });
	}
}