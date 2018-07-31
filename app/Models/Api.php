<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Api extends Model
{
    //  Define attributes
    private $api_key = 'KEY HERE';
    private $api_url = 'https://api.themoviedb.org/3/search/movie?api_key=';
    public $return_array = [];


    //  Get movie data from The Movie Database API using provided movie title
    public function getMovie($title)
    {
        //  Strip any spaces out of $title so we don't break the request url
        $title = str_replace(' ', '%20', $title);

        //  Build API request
        $api_request = $this->api_url . $this->api_key . '&language=en-US&query=' . $title . '&page=1';

        //  Use cURL to hit API and retrieve movie data
        $session = curl_init($api_request);
        curl_setopt($session, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($session, CURLOPT_HEADER, 0);
        $results = $result=curl_exec($session);
        curl_close($session);

        //  Decode json response as an associative array and handle if more than one result is returned from the API
        $results = json_decode($results, true);

        if (!empty($results['results'][0])) {
            //  Define return_array using the first result
            $this->return_array['info'] = $results['results'][0];
        }
        else {
            //  Error handling
            $this->return_array['info'] = 'No data available.';
        }
    }
}