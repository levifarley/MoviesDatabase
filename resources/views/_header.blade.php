<!-- Navigation bar header -->
<nav class="navbar navbar-inverse sticky-top" id="navbar">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand margin-right-50" href="/">levifarley.com</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="/home">Home</a></li>
            <li><a href="/movies">Movie Collection</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right" id="logout">
            <li class="float-right"><a href="{{ route('logout') }}"><span class="fas fa-sign-out-alt"></span>&nbsp; Logout</a></li>
        </ul>
    </div>
</nav>