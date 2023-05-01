let sidebar = document.querySelector(".sidebar");
let closeBtn = document.querySelector("#btn");

closeBtn.addEventListener("click", () => {
    sidebar.classList.toggle("open");
    menuBtnChange();//calling the function(optional)
});

// following are the code to change sidebar button(optional)
function menuBtnChange() {
    if (sidebar.classList.contains("open")) {
        closeBtn.classList.replace("fa-bars", "fa-xmark");//replacing the iocns class
    } else {
        closeBtn.classList.replace("fa-xmark", "fa-bars");//replacing the iocns class
    }
}

//--------------------devesh code-----------------------------------

const searchMovies = () => {
    const searchbox = document.getElementById("search-item").value.toUpperCase();
    const storeItems = document.getElementById("movie-list");
    const movies = document.querySelectorAll(".movies-list-col");
    const mname = document.getElementsByTagName("h2");

    for (var i = 0; i < mname.length; i++) {
        let match = movies[i].getElementsByTagName("h2")[0];

        if (match) {
            let textvalue = match.textContent || match.innerHTML

            if (textvalue.toUpperCase().indexOf(searchbox) > -1) {
                movies[i].style.display = "";
            }

            else {
                movies[i].style.display = "none";
            }

        }
    }
}

window.onload = function () {
    var SearchResult = document.getElementById("movie-list");
    document.onclick = function (event) {
        if (event.target.id !== "movie-list") {
            SearchResult.style.display = "block";
        }
        if (event.target.id !== "search-item") {
            SearchResult.style.display = "none";
        }
    }
};

function openSideBar() {
    //sidebar.classList.add("open");
    //menuBtnChange();

    //if (document.getElementById('InvalidLoginCredentials').style.display == 'inline-block') {
    //    sidebar.classList.add("open");
    //    menuBtnChange();
    //}
    let e = document.getElementById("InvalidLoginCredentials");
    e.classList.add("active");
    /*alert('hello');*/
}


if (document.getElementById('Label1').style.display == 'block') {
    sidebar.classList.add("open");
    menuBtnChange();
}

if (document.getElementById('Label1').style.visibility == 'visible') {
    sidebar.classList.add("open");
    menuBtnChange();
    document.getElementById('Label1').style.visibility = "hidden";
}

if (document.getElementById('Label1').display == 'none' && document.getElementById('Label1').style.visibility == 'hidden') {
    sidebar.classList.remove("open");
    menuBtnChange();
}