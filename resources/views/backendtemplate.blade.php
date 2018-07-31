<!DOCTYPE html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>levifarley.com | @yield('title')</title>
    <!-- Bootstrap -->
    <link href="{{ asset('css/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Icons -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.12/js/all.js" integrity="sha384-Voup2lBiiyZYkRto2XWqbzxHXwzcm4A5RfdfG6466bu5LqjwwrjXCMBQBLMWh7qR" crossorigin="anonymous"></script>
    <!-- Styles -->
    <link href="{{ asset('css/custom.css') }}" rel="stylesheet">
</head>

<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            @include('_header')
        </div>
    </div>

    <div class="row margin-top-25">
        <div class="col-md-1"><!-- spacer --></div>

        <!-- Centers all content -->
        <div class='col-md-10'>
            @yield('content')
        </div>

        <div class="col-md-1"><!-- spacer --></div>
    </div>
</div>

    <!-- Scripts -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
    /* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
    function myFunction() {
        var x = document.getElementById("navbar");
        if (x.className === "navbar-inverse") {
            x.className += " responsive";
        } else {
            x.className = "navbar-inverse";
        }
    }
</script>

</body>

</html>