<%@ Page Title="" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="Test1.aspx.cs" Inherits="Test1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css.css" />
    <script type="text/javascript">
        class Question {
            constructor(title, image, answer0, answer1, answer2, answer3, correctIndex) {
                this.title = title;
                this.image = image;
                this.answer0 = answer0;
                this.answer1 = answer1;
                this.answer2 = answer2;
                this.answer3 = answer3;
                this.correctIndex = correctIndex;
            }
        }

        var previousButton;
        var nextButton;
        var finishButton;
        var answerElements;
        var link;
        var currentIndex;
        var correctAnswers;
        var array11;

        function updateUI11(index) {
            var questionElement = document.getElementById("question_id");
            var answerElement0 = document.getElementById("answer0");
            var answerElement1 = document.getElementById("answer1");
            var answerElement2 = document.getElementById("answer2");
            var answerElement3 = document.getElementById("answer3");
            var imageElement = document.getElementById("question_image");
            var question11 = array11[index];

            questionElement.innerText = question11.title;
            answerElement0.nextElementSibling.innerHTML = question11.answer0;
            answerElement1.nextElementSibling.innerHTML = question11.answer1;
            answerElement2.nextElementSibling.innerHTML = question11.answer2;
            answerElement3.nextElementSibling.innerHTML = question11.answer3;
            imageElement.src = question11.image;

            // Make all radio buttons unchecked
            for (var i = 0; i < answerElements.length; i++) {
                answerElements[i].checked = false;
            }
        }

        document.addEventListener("DOMContentLoaded", function () {
            previousButton = document.getElementById("previous");
            nextButton = document.getElementById("next");
            finishButton = document.getElementById("finish");
            answerElements = document.getElementsByName("answer");
            link = document.getElementById("resultLink");
            currentIndex = 0;
            correctAnswers = 0;
            array11 = [];

            previousButton.addEventListener("click", function () {
                currentIndex--;
                updateUI11(currentIndex);
            });

            nextButton.addEventListener("click", function () {
                var selectedAnswer = 0;
                for (let i = 0; i < answerElements.length; i++) {
                    if (answerElements[i].checked) {
                        selectedAnswer = i;
                    }
                }

                var question11 = array11[currentIndex];
                if (selectedAnswer == question11.correctIndex) {
                    correctAnswers++;
                }

                currentIndex++;

                if (currentIndex == array11.length) {
                    link.classList.remove("invisible11");
                    link.href = "Results.aspx?score=" + correctAnswers;
                } else {
                    updateUI11(currentIndex);
                }
            });

            finishButton.addEventListener("click", function () {
                var goodLuckElement = document.createElement("h2");
                goodLuckElement.style.color = "red";
                goodLuckElement.innerText = "Good Luck!";
                document.querySelector(".text-center").appendChild(goodLuckElement);

                setTimeout(function () {
                    goodLuckElement.remove();
                    window.location.href = "Results.aspx?score=" + correctAnswers;
                }, 5000);
            });

            const question0 = new Question("Question 1: WICH NUMBER REPRESESNTS THE SIDE OF THE RODE", "IMG/Q1.jpg", "1", "6", "7", "3", 2);
            const question1 = new Question("Question 2: WHAT DOES THE SIGN MEAN", "IMG/Q2.jpg", "ENTERY FOR BIKES IS NOT ALLOWED", "NO VEHICAL WITH ENGINE ALLOWWD", "ENTERY FOR BICYCLES NOT ALLOWED", "ENTERY ALLOWED FOR BIKES", 1);
            const question2 = new Question("Question 3: WHAT IS THE ADVANTAGE OF STAYING IN THE RIGHT OF THE ROAD", "IMG/Q3.jpg", "This makes it possible to reduce the reaction distance in case of immediate danger.", "There is no advantage to driving on the right side of the road, but only on a one-way road."
                , "HELPS QUICK ESCAPE IN CASE OF EMERGENCY", "ENABLES STAYING AT THE RIGHT DISTANCE FROM THE SIDEWALK", 2);
            const question3 = new Question("Question 4: CAN YOU PARK NON TAXIS WHERE THIS SIGN IS PRESENTS", "IMG/Q4.jpg", "ALWAYS PROHIBITED", "PROHIBITED UNLESS DROPPING OFF PASSENGERS", "ALOWWED, UNLESS TAXIES ARE PARKING", "ALLOWED, ONLY FOR PICKING UP PASSENGERS", 1);
            const question4 = new Question("Question 5: WHAT IS THE MAIN DANGER OF GETTING CLOSE TO A WET CROSSROADS", "IMG/Q5.jpg", "YOU CANT SEE THE SIGN WHEN THE ROAD IS WET", "THERE ARE MORE PEDESTRIANS", "THE CAR CAN SLIP INTO THE CROSSROADS", "NO RISK", 2);

            array11.push(question0);
            array11.push(question1);
            array11.push(question2);
            array11.push(question3);
            array11.push(question4);
      


            updateUI11(currentIndex);
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="text-center">
        <h2>Question:</h2>
        <p id="question_id"></p>

        <img id="question_image" src="" alt="Question Image" width="300" height="300" />
        <br/>
        
        <h2>Answers:</h2>
        <form id="answers" action="Results.aspx" method="post">
            <input type="radio" id="answer0" name="answer" value="0" />
            <label for="answer0">London</label><br />
            <input type="radio" id="answer1" name="answer" value="1" />
            <label for="answer1">Berlin</label><br />
            <input type="radio" id="answer2" name="answer" value="2" />
            <label for="answer2">Paris</label><br />
            <input type="radio" id="answer3" name="answer" value="3" />
            <label for="answer3">Rome</label>
        </form>

        

        <button id="previous" class="invisible11">Previous</button>
       <center>
        <button id="next">Next</button>
        <button id="finish">Finish</button>
        </center>
        <p><a id="resultLink" href="#" class="invisible11">Go to the Results Page</a></p>
    </div>
</asp:Content>
