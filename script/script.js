
function changeEnabled() {
    //    if (counter % 2 == 0) {
    var elems = document.getElementsByClassName('inputs');
    for (var i = 0; i < elems.length; i++) {
        elems[i].disabled = false;
    }
    document.getElementById('submit-button').disabled = false;
    document.getElementById('change-button').textContent = "Cancel";
    /*    } else {
            var elems = document.getElementsByClassName('inputs');
            for (var i = 0; i < elems.length; i++) {
                elems[i].disabled = true;
            }
        }*/
}

function checkBoxChanged(checkboxElem) {
    if (checkboxElem.checked) {
    } else {
    }
}