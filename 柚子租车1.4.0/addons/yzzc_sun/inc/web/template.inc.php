<?php
global $_GPC, $_W;
$GLOBALS['frames'] = $this->getMainMenu();
$item=pdo_get('yzzc_sun_system',array('uniacid'=>$_W['uniacid']));


if($_GPC['op']=='order'){
    $item=pdo_get('yzzc_sun_system',array('uniacid'=>$_W['uniacid']));
    $template_id=$item['order_template_id'];
    if($template_id){
        message('您已开启过该模板消息，请勿重复开启','','success');
    }else{

        $system=pdo_get('yzzc_sun_system',array('uniacid'=>$_W['uniacid']),array('appid','appsecret','token_expires_in','token'));
        if($system['token_expires_in']>time()){
            $token=$system['token'];
        }else{
            $url='https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid='.$system['appid'].'&secret='.$system['appsecret'];
            $curl = curl_init();
            curl_setopt($curl, CURLOPT_URL, $url);
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
            if (!empty($data)){
                curl_setopt($curl, CURLOPT_POST, 1);
                curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
            }
            curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
            $output = curl_exec($curl);
            curl_close($curl);

            $info=json_decode($output,true);
            pdo_update('yzzc_sun_system',array('token'=>$info['access_token'],'token_expires_in'=>time()+7000));
            $token=$system['token'];
        }
        $url="https://api.weixin.qq.com/cgi-bin/wxopen/template/add?access_token=".$token;
        $data['id']='AT0104';
        $data['keyword_id_list']=[10,79,44,13];

        $data=json_encode($data);
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        if (!empty($data)){
            curl_setopt($curl, CURLOPT_POST, 1);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
        }
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        $output = curl_exec($curl);
        curl_close($curl);

        $info=$output;

        $add=json_decode($info,true);

        if($add['errcode']==0&&$add['errmsg']=='ok'){
            $res=pdo_update('yzzc_sun_system',array('order_template_id'=>$add['template_id']),array('uniacid'=>$_W['uniacid']));
            if($res){
                message('预约成功模板消息设置成功',$this->createWebUrl('template',array()),'success');
            }else{
                message('设置失败','','error');
            }
        }else{
            message('设置失败','','error');
        }

    }
}
include $this->template('web/template');