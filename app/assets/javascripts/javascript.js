//Zoom images
if (top.location != self.location) {
  top.location = self.location
}
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-18506635-11']);
_gaq.push(['_setDomainName', '.nl-mus.blogspot.com']);
_gaq.push(['_trackPageview']);
(function() {
  var a = document.createElement("script");
  a.type = 'text/javascript';
  a.async = true;
  a.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var b = document.getElementsByTagName('script')[0];
  b.parentNode.insertBefore(a, b)
})();
// Sự kiện login
var modal = document.getElementById('id01');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = 'none';
  }
}
// Sự kiện sign
var modal = document.getElementById('id02');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = 'none';
  }
}
$(function() {
  var action;
  $('.number-spinner button').mousedown(function() {
    btn = $(this);
    input = btn.closest('.number-spinner').find('input');
    btn.closest('.number-spinner').find('button').prop('disabled', false);

    if (btn.attr('data-dir') == 'up') {
      action = setInterval(function() {
        if (input.attr('max') == undefined || parseInt(input.val()) < parseInt(input.attr('max'))) {
          input.val(parseInt(input.val()) + 1);
        } else {
          btn.prop('disabled', true);
          clearInterval(action);
        }
      }, 50);
    } else {
      action = setInterval(function() {
        if (input.attr('min') == undefined || parseInt(input.val()) > parseInt(input.attr('min'))) {
          input.val(parseInt(input.val()) - 1);
        } else {
          btn.prop('disabled', true);
          clearInterval(action);
        }
      }, 50);
    }
  }).mouseup(function() {
    clearInterval(action);
  });
});
