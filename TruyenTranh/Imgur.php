<?php
namespace TruyenTranh;

use Exception;

class Imgur
{
    public $img;
    public function __construct(string $url) {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'https://api.imgur.com/3/image.json');
        curl_setopt($ch, CURLOPT_POST, TRUE);
        curl_setopt($ch, CURLOPT_TIMEOUT, 30);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Authorization: Client-ID ' . IMGUR_CLIENT_ID));
        curl_setopt($ch, CURLOPT_POSTFIELDS, array('image' => $url));
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

        $reply = curl_exec($ch);
        curl_close($ch);

        $reply = json_decode($reply);
        if ($reply->data->error) {
            throw new Exception('Hình ảnh có vấn đề!');
        } else $this->img = $reply->data->link;
    }
}