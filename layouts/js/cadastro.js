function openCad(cadastro) {
    var i;
    var x = document.getElementsByClassName("tabs");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    document.getElementById(cadastro).style.display = "block";
}
//= require jquery.mask

$(function(){
  $("#cnpj").keydown(function(){
  try {
    $("#cnpj").unmask();
  } catch (e) {}

  $("#cnpj").mask("99.999.999/9999-99");

  // ajustando foco
  var elem = this;
  setTimeout(function(){
    // mudo a posição do seletor
    elem.selectionStart = elem.selectionEnd = 10000;
  }, 0);
  // reaplico o valor para mudar o foco
  var currentValue = $(this).val();
    $(this).val('');
    $(this).val(currentValue);
  });
})
