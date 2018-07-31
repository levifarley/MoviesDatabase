<?php

namespace App\Http\Controllers;

use App\Models\Movie;

class MoviesController extends Controller
{
    //  Declare attributes
    public static $return_array = [];


    //  Return list of movies from movies table
    public static function getMovies()
    {
        //  Instantiate Movie model
        $model = new Movie();

        //  Get all movies from table
        self::$return_array['movies'] = $model::orderby('movie_title', 'asc')->get();

        //  Return movies view with list of all movies
        return view('movies', ['return_array' => self::$return_array]);
    }


    //  Add movie to database
    public static function addMovie()
    {
        //  Instantiate Movie model
        $model = new Movie();

        //  Get provided movie title and format as an associative array
        $movie = Request();

        //  Insert data to movies table
       $model->movie_title = $movie['movie_title'];
       $model->movie_format = $movie['movie_format'];
       $model->save();

       //  Define success_message to display on movies view
        $success_message = '<div class="alert alert-success margin-bottom-30"><strong>Movie has been added successfully.</strong></div>';

        //  Get updated list of movies to return with view
        self::getMovies();

        //  Return list of movies and success message with movies view
        return view('movies', ['success_message' => $success_message], ['return_array' => self::$return_array]);
    }
}