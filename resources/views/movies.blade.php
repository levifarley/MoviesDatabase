@extends('backendtemplate')

@section('title', 'Movie Collection')

@section('content')

<!-- Success message -->
<?php
if (!empty($success_message)) {
    echo $success_message;
}
?>

<!-- Add movie panel -->

<div class="panel panel-primary margin-bottom-30">
    <div class="panel-heading">Add Movie to Collection</div>
    <div class="panel-body">
        <div class="col-md-12 input-group">
            <form method="post" action="/movieadded">
                <div class="col-xs-12 col-md-6 col-lg-8">
                    <label for="title">Movie Title</label><input name="movie_title" id="title" type="text" class="form-control" maxlength="50" required />
                </div>
                <div class="col-xs-12 col-md-6 col-lg-4">
                    <label for="format">Movie Format</label>
                    <select name="movie_format" id="format" class="form-control">
                        <option value="DVD">DVD</option>
                        <option value="Blu-Ray">Blu-Ray</option>
                    </select>
                </div>
                <div class="col-lg-12">
                    <?php
                    if (Auth::user()->getAuthIdentifier() == 1 || Auth::user()->getAuthIdentifier() == 2) {
                    ?>
                    <button type="submit" class="btn btn-success float-right margin-top-25">Add Movie</button>
                        <?php
                        }
                        else {
                            echo '<button type="button" class="btn btn-success float-right margin-top-25" disabled>Add Movie (Disabled as Guest)</button>';
                        }
                        ?>
                </div>
            </form>
        </div>
    </div>
</div>



<!-- Movies list -->
<div class="panel panel-primary">
    <div class="panel-heading">Movie Collection</div>
    <div class="panel-body">
        <table class="table table-striped" id="list">
            <thead>
            <tr colspan="3"><input type="text" id="search" onkeyup="searchMovies()" placeholder="Search by movie title" class="form-control float-right" style="color: #000; padding: 0px 10px 0px 35px ; width: 300px; margin-bottom:20px; background-image: url('{{ asset("img/searchicon.png") }}'); background-position: 5px 5px; background-repeat: no-repeat;" maxlength="50" /></tr>
            <th>Number</th>
            <th>Title</th>
            <th>Format</th>
            </thead>
            <tbody>
            <?php
            //  Iterate through movies array and list all movies separately in table
            $i = 1;
            foreach ($return_array['movies'] as $movie) {
                echo '<tr><td>' . $i . '</td><td><span data-toggle="modal" data-target="#modal" onclick="openModal(\'' .$movie["movie_title"]. '\')">' . $movie['movie_title'] . '</span></td><td>' . $movie['movie_format'] . '</td></tr>';
                $i++;
            }
            ?>
            </tbody>
        </table>
    </div>
</div>

<!-- Movie info modal -->
<div id="modal" class="modal modal-sm">
    <div class="modal-content">
        <span class="close">&times;</span>
        <h3 class="margin-30" id="modal-title"><!-- movie title generated here --></h3>
        <hr>
        <div id="movie-data">
            <!-- movie info generated here -->
        </div>
    </div>
</div>


<!-- Search movies functionality -->
<script src="{{ asset('js/searchmovies.js') }}"></script>
<!-- Movie information modal -->
<script src="{{ asset('js/openmodal.js') }}"></script>

@endsection