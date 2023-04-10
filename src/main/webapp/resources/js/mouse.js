let container = document.getElementById("container");
let content = document.getElementById("content");
let isScrolling = false;
let startPosition = 0;
let startScrollPosition = 0;

container.addEventListener("mousedown", function(event) {
  isScrolling = true;
  startPosition = event.clientY;
  startScrollPosition = container.scrollTop;
});

container.addEventListener("mouseup", function() {
  isScrolling = false;
});

container.addEventListener("mousemove", function(event) {
  if (isScrolling) {
    var distance = event.clientY - startPosition;
    container.scrollTop = startScrollPosition - distance;
  }
});