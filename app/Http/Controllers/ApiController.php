<?php

namespace App\Http\Controllers;

use App\Models\Api;

class ApiController extends Controller
{
    //  Get movie data from Api using given movie title
    public static function getMovieData($title)
    {
        //  Instantiate API model
        $model = new Api();

        //  Use method to get movie data
        $model->getMovie($title);

        //  Return movie data
        return $model->return_array;
    }
}