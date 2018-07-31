//  Send ajax request to get movie data for given movie title and populate modal with information
function openModal(title) {
    $.get("/movieinfo/" + title, function(data) {
        //  Opens the modal
        modal.style.display = "block";
        modal.focus();
        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];
        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
            modal.style.display = "none";
            blur(modal);
        };

        if (data.info !== "No data available.") {
            //  Format release date for human readability
            var formattedDate = new Date(data.info.release_date);
            var d = formattedDate.getDate();
            var d = d + 1;
            var m =  formattedDate.getMonth();
            m += 1;
            var y = formattedDate.getFullYear();
            var releaseDate = data.info.release_date.value = m + "/" + d + "/" + y;

            //  Display movie information content
            document.getElementById('modal-title').innerText = data.info.original_title + " Information";
            document.getElementById('movie-data').innerHTML = "<div class='row'><div class='col-md-4'><img src='https://image.tmdb.org/t/p/w500/" + data.info.poster_path + "' style='width: 80%; height: auto; margin-bottom: 20px;' class='responsive'></div><div class='col-md-8'><p><b>TMDb ID:</b> " + data.info.id + "</p><p><b>TMDb Popularity:</b> " + data.info.popularity + "</p><p><b>Release Date :</b> " + releaseDate + "</p><b>Overview :</b><br><div class='well' style='background-color: #222; margin-top: 5px;'>" + data.info.overview + "</div></div></div>";
            console.log(data.info);
        }
        else {
            document.getElementById('modal-title').innerText = "Movie Information";
            document.getElementById('movie-data').innerHTML = data.info;
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
                blur(modal);
            }
        }
    });
}


