
var turn = 1

$(document).ready(function(){
  $('td').click(function(){
    if (turn %2 != 0){
      $('td').removeClass('queen');
      $(this).removeClass('gray-pawn');
      $(this).addClass('queen');
      $('#queen').val($(this).next().text());
      $('.queen-spot').text($(this).text())
      console.log($('#queen').val());
      turn += 1;
    } else {
      $('td').removeClass('gray-pawn');
      $(this).removeClass('queen');
      $(this).addClass('gray-pawn');
      $('#player').val($(this).text());
      $('.player-spot').text($(this).text())
      turn += 1;
      console.log($('#queen').val());
      console.log($('#player').val());
    }
  });
});
