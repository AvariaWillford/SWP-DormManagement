//var myModal = document.getElementById('myModal')
//var myInput = document.getElementById('myInput')
//
//myModal.addEventListener('shown.bs.modal', function () {
//  myInput.focus()
//})
function deleteClick(element) {
   if(element.id === "balance1") {
    document.getElementById("balance1").value = parseFloat("0");
   }
   }