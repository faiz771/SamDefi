<?php
header('Content-Type: application/json');
define('CryptExchanger_INSTALLED',TRUE);
ob_start();
session_start();
error_reporting(0);
include("../configs/bootstrap.php");
include("../includes/bootstrap.php");
include(getLanguage($settings['url'],null,2));
$data = array();
$a = protect($_GET['a']);
if($a == "receive_list") {
    $id = protect($_GET['id']);
    $query = $db->query("SELECT * FROM ce_gateways_directions WHERE gateway_id='$id'");
    $receive_list = '';
    if($query->num_rows>0) {
        $row = $query->fetch_assoc();
        $directions = explode(",",$row['directions']);
        foreach($directions as $k=>$v) {
            $receive_list .= '<option value="'.$v.'">'.gatewayinfo($v,"name").' '.gatewayinfo($v,"currency").'</option>';
        }
        $data['status'] = 'success';
        $data['content'] = $receive_list;
    } else {
        $data['status'] = 'error';
        $data['msg'] = 'Error loading gateway directions.';
    }
} elseif($a == "rate") {
    $from = protect($_GET['from']);
    $to = protect($_GET['to']);
    $GetRates = $db->query("SELECT * FROM ce_rates_live WHERE gateway_from='$from' and gateway_to='$to'");
    if($GetRates->num_rows>0) {  
        $rate = $GetRates->fetch_assoc();
        $data['status'] = 'success';
        $data['rate_from'] = $rate['rate_from'];
        $rate_to = $rate['rate_to'];
        //discount system
        if(checkSession()) {
            $udlevel = idinfo($_SESSION['ce_uid'],"discount_level");
            $CheckDiscountQuery = $db->query("SELECT * FROM ce_discount_system WHERE discount_level='$udlevel'");
            if($CheckDiscountQuery->num_rows>0) {
                $d = $CheckDiscountQuery->fetch_assoc();
                $dfee = $d['discount_percentage'];
                $calculate = ($rate_to * $dfee) / 100;
                $rate_to = $rate_to + $calculate;
            }
        }
        $data['rate_to'] = $rate_to;
        $data['currency_from'] = gatewayinfo($from,"currency");
        $data['currency_to'] = gatewayinfo($to,"currency");
        $data['reserve'] = gatewayinfo($to,"reserve");
        $data['sic1'] = gatewayinfo($from,"is_crypto");
        $data['sic2'] = gatewayinfo($to,"is_crypto");
    } else {
        $data['status'] = 'error';
        $data['msg'] = 'Error loading exchange rate.';
    }
} elseif($a == "img") {
    $id = protect($_GET['id']);
    $icon = gticon($id); 
    if($icon) {
        $data['status'] = 'success';
        $data['content'] = $icon;
    } else {
        $data['status'] = 'error';
        $data['msg'] = 'Error loading gateway icon';
    }
} else {
    $data['status'] = 'error';
    $data['msg'] = 'Error getting information';
}
echo json_encode($data);
?>