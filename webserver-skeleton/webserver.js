// Create a div at the end of the document with the id
// "myfooter" and update it to demonstrate that javascript
// processing works 

window.onload = function() {
    // Find the 'myfooter' element.
    var elem = document.getElementById('myfooter');
    if (!!elem) {
        elem.innerHTML = '<p><i>Footer Information</i></p>';
    }
    else {
        alert('WARNING! Element "myfooter" not found.');
    }
};
