<?php
    $url = $_GET['url'];
    $images = $_GET['i'];
    
    for($i = 0; $i < $images; $i++){
        $path = 'http://timwebs.altervista.org/data/img/d_'.$url.'_'.$i.'.jpg';
        echo ("<img src='".$path."' width='100%' onclick='changeMainPhoto(\"".$path."\")' />");
    }
?>