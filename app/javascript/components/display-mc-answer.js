const multipleChoicePopup = () => {
  const multipleCheckbox = document.getElementById('question_type_mc');
  const openAnswerCheckbox = document.getElementById('question_type_os');

  multipleCheckbox.addEventListener('click', function(event){
        document.getElementById('multiple_answers').style.visibility = 'visible';
  });

  openAnswerCheckbox.addEventListener('click', function(){
      document.getElementById('multiple_answers').style.visibility = 'hidden';
  });

}

export { multipleChoicePopup };
