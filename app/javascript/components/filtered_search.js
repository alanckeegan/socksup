let input = document.getElementById("query_title");
if (input){
  input.addEventListener('keyup', (event) => {
      let search = document.getElementById("query_title").value;
      let cards = document.querySelectorAll('.card');
        let titles = document.querySelectorAll('.card-title');
      for (i = 0; i < cards.length; i++) {
        if (titles[i].innerHTML.toLowerCase().includes(input.value.toLowerCase())) {
          cards[i].style.display = "";
        } else {
          cards[i].style.display = "none";
        }
      }
  });
}
