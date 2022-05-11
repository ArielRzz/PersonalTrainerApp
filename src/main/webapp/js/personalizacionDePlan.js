

var select=document.getElementById("select");
var select2=document.getElementById("select2");
var select3=document.getElementById("select3");

select.addEventListener('change',function(){

    var selectedOption = this.options[select.selectedIndex];
    select.setAttribute("value", selectedOption.text);
})

select2.addEventListener('change',function(){

    var selectedOption = this.options[select2.selectedIndex];
    select2.setAttribute("value", selectedOption.text);
})

select3.addEventListener('change',function(){

    var selectedOption = this.options[select3.selectedIndex];
    select3.setAttribute("value", selectedOption.text);
})