<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

require_once './Client.php';

$accion = $_GET['accion'];

$options = [
    'uri' => 'https://172.10.0.10',
    'apiKey' => 'PFFAzM7GB9aBoXSEwsAH6tZV',
    'apiSecret' => 'AAAAAAAAAAAAAAAAAAAA111111111111111111111222222222222222SECRET',
    'debug' => TRUE,
];

$client = new PfSenseFauxApi\Client($options);

if (isset($_GET['valor']) && isset($_GET['accion'])) {

    $valor = $_GET['valor'];
    switch ($accion) {

        case 1: {
                /**
                 * CAMBIAR LA URL DE INICIO
                 */
                $nuevo_redir = [
                    "captiveportal" => [
                        "ecys014" => [
                            "redirurl" => $valor
                        ]
                    ]
                ];
                $response = $client->config_patch($nuevo_redir);
                echo json_encode($response);
                break;
            }
        case 2: {
                /**
                 * CAMBIAR DE TIEMPO DE INNACTIVIDAD PARA DESCONEXION
                 */
                $nuevo_redir = [
                    "captiveportal" => [
                        "ecys014" => [
                            "idletimeout" => $valor
                        ]
                    ]
                ];
                $response = $client->config_patch($nuevo_redir);
                echo json_encode($response);
                break;
            }
        case 3: {
                /**
                 * CUOTA DIARIA DE CONEXION
                 */
                $nuevo_redir = [
                    "captiveportal" => [
                        "ecys014" => [
                            "trafficquota" => $valor
                        ]
                    ]
                ];
                $response = $client->config_patch($nuevo_redir);
                echo json_encode($response);
                break;
            }
        case 4: {
                /**
                 * ANCHO DE BANDA PARA SUBIDA
                 */
                $nuevo_redir = [
                    "captiveportal" => [
                        "ecys014" => [
                            "bwdefaultup" => $valor
                        ]
                    ]
                ];
                $response = $client->config_patch($nuevo_redir);
                echo json_encode($response);
                break;
            }
        case 5: {
                /**
                 * ANCHO DE BANDA PARA DESCARGA
                 * 
                 */
                $nuevo_redir = [
                    "captiveportal" => [
                        "ecys014" => [
                            "bwdefaultdn" => $valor
                        ]
                    ]
                ];
                $response = $client->config_patch($nuevo_redir);
                echo json_encode($response);
                break;
            }

        case 6: {
                /**
                 * CUOTA DE DATOS DISPONIBLES PARA LOS USUARIOS
                 * Megabytes 
                 */
                $nuevo_redir = [
                    "captiveportal" => [
                        "ecys014" => [
                            "timeout" => $valor
                        ]
                    ]
                ];
                $response = $client->config_patch($nuevo_redir);
                echo json_encode($response);
                break;
            }
    }
} else {

    echo json_encode(array("massage" => "error"));
}





