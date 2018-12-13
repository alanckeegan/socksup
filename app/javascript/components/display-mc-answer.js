const multipleChoicePopup = () => {
  const multipleCheckbox = document.getElementById('question_type_mc');
  const openAnswerCheckbox = document.getElementById('question_type_os');
  const submitButton = document.getElementById('submit_button_question');

    openAnswerCheckbox.addEventListener('click', function(){
      document.getElementById('multiple_answers').style.visibility = 'hidden';
      document.getElementById('multiple_answers').style.height = 0;
      document.getElementById('submit_button_question').style.visibility = 'visible';
      document.getElementById('submit_button_question_finish').style.visibility = 'visible';
  });

  multipleCheckbox.addEventListener('click', function(event){
        document.getElementById('multiple_answers').style.visibility = 'visible';
        document.getElementById('multiple_answers').style.height = '250px';
        document.getElementById('submit_button_question').style.visibility = 'visible';
        document.getElementById('submit_button_question_finish').style.visibility = 'visible';
  });
}

export { multipleChoicePopup };
