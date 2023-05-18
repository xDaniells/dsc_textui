var timerrest = 2000;
var sleeping = false;

$(function() {
  // Hide and fade the container initially
  $(".container").removeClass("container-show").addClass("container-hide").fadeOut(300);

  // Agregar evento para recibir mensajes
  window.addEventListener("message", function(event) {
    let v = event.data;
    if (v.message) {
      // Show and animate the container with the received message
      $(".container").removeClass("container-hide").addClass("container-show").fadeIn(300).html(v.message);
      HelpTimer(5000);
    }
  });
});

HelpTimer = (restore) => {
  // Reset timeout if a value is provided
  if (restore != null) {
    timerrest = 3000;
  }

  if (!sleeping) {
    sleeping = true;
    setTimeout(function() {
      timerrest -= 1000;

      if (timerrest == 0) {
        // Hide and fade container at zero timeout
        $(".container").removeClass("container-show").addClass("container-hide").fadeOut(300);
      }

      sleeping = false;
      HelpTimer();
    }, 10);
  }
};
