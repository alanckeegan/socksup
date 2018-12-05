// use querySelector to get inline by class

// addeventlistener, onclick to
// removeclasslist active from all inline
// addclasslist 'active' to the event.target

// in css, make your active class to be the fill color
const buttons = document.querySelectorAll('.collection_radio_buttons');

function addListener(element) {
  element.addEventListener('click', function(event) {
    buttons.forEach(button => button.classList.remove("active"))
    // console.log(event)
    // event.removeClassList('active')
    event.currentTarget.classList.toggle('active');
  })
}

if (buttons) {
  buttons.forEach(addListener);
}
