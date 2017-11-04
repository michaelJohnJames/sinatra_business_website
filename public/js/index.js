main-carousel [ "img/computers2.jpeg", "img/computerwrench.jpg"]


var carousel = document.getElementsById("main-image")
var button = document.getElmentById("arrow")


function swapPic() {
  let x = 0;
  carousel.src = main-carousel[x++]
}


button.addEventListener('click', swapPic)
