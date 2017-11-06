var mainCarousel = [ { Name: "Computers",
  Image: "img/computers2.jpeg"}, { Name: "Wrench", Image: "img/computerwrench.jpg" } ]


var carousel = document.getElementById("main-image")
var scroll = document.getElementById("arrow")


function swapPic() {
  let i = 0;
  carousel.src = mainCarousel[i++].Image
}


scroll.addEventListener('click', swapPic)
