<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        require_once './Client.php';
        require_once './servicio.php';
        
        /*
        $options = [
            'uri' => 'https://172.10.0.10',
            'apiKey' => 'PFFAzM7GB9aBoXSEwsAH6tZV',
            'apiSecret' => 'AAAAAAAAAAAAAAAAAAAA111111111111111111111222222222222222SECRET',
            'debug' => TRUE,
        ];
        
        $client = new PfSenseFauxApi\Client($options);
        
        $nueva = $client->config_get();
        echo '<script>console.log('.  json_encode($nueva).');</script>';
         * 
         */
        
        
        /*
        $viejita = $client->config_get();

        //$response['data']['config']['captiveportal']['hola']['redirurl'] = "holi.html";
        
        $nuevo_redir = [
            "captiveportal" => [
                "ecys014" => [
                    "redirurl" => "https://www.facebook.com"
                ]
            ]
        ];
        
        $response = $client->config_patch($nuevo_redir);

        echo '<script>console.log('.  json_encode($viejita).');</script>';
        echo '<script>console.log('.  json_encode($response).');</script>';
        
        echo json_encode($response);
        //var_dump($response);
         *
         */
?>
    </body>
</html>
