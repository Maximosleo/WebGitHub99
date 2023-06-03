﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript"  >
    class Question {
        // Qustion =שם המחלקה
        title;
        answer0;
        answer1;
        answer2;
        answer3;
        correctIndex;
        // העמוד שדרה שלה הנחלקה / בעברית : תכונו, באנגלית: fillds/שדות.

        constructor(title1, answer0, answer1, answer2, answer3, correctIndex1) {
            this.title = title1;
            this.answer0 = answer0;
            this.answer1 = answer1;
            this.answer2 = answer2;
            this.answer3 = answer3;
            this.correctIndex = correctIndex1;
            // בונה את האובייקט
        }
    }

    var previousButton = document.getElementById("previous");
    var nextButton = document.getElementById("next");
    var answerElements = document.getElementsByName("answer");
    var checkButton = document.getElementById("check");
    var link = document.getElementById("resultLink");



    var currentIndex = 0;
    var correctAnswers = 0;

    var array11 = [];

    previousButton.addEventListener("click", function () {
        //alert("Previous button clicked, but it does nothing yet!");
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

        // if we finished the last question
        if (currentIndex == array11.length) {
            // make it visible
            link.classList.remove("invisible11");
            link.href = "/ResultsTest?value=" + correctAnswers;
        }
        else {
            updateUI11(currentIndex);
        }

    });

    checkButton.addEventListener("click", function () {
        //  alert(correctAnswers);
        var someValue = "dynamicValue";  // Update this variable as needed
        link.href = "/ResultsTest?value=" + correctAnswers;

    });

    // when the page starts
    document.addEventListener("DOMContentLoaded", function () {
        console.log("Page fully loaded and DOM is ready");

        const question0 = new Question("question 1: AAAAA", "answer 00 fsdgf",
            "answer 01 fsdgf", "answer 02 fsdgf", "answer 03 fsdgf", 2);

        const question1 = new Question("question 2:BBBBB", "answer 10 fsdgf",
            "answer 11 fsdgf", "answer 12 fsdgf", "answer 13 fsdgf", 2);

        const question2 = new Question("question 3: CCCCC", "answer 20 fsdgf",
            "answer 21 fsdgf", "answer 22 fsdgf", "answer 23 fsdgf", 2);

        const question3 = new Question("question 4: DDDDD", "answer 30 fsdgf",
            "answer 31 fsdgf", "answer 32 fsdgf", "answer 33 fsdgf", 2);

        const question4 = new Question("question 5: EEEEE", "answer 40 fsdgf",
            "answer 41 fsdgf", "answer 42 fsdgf", "answer 43 fsdgf", 2);

        array11.push(question0);
        array11.push(question1);
        array11.push(question2);
        array11.push(question3);
        array11.push(question4);

        updateUI11(currentIndex);
    });

    function updateUI11(index) {
        //   alert("function called");
        var questionElement = document.getElementById("question_id");
        var answerElement0 = document.getElementById("answer0");
        var answerElement1 = document.getElementById("answer1");
        var answerElement2 = document.getElementById("answer2");
        var answerElement3 = document.getElementById("answer3");
        var question11 = array11[index];

        questionElement.innerText = question11.title;

        answerElement0.nextElementSibling.innerHTML = question11.answer0;
        answerElement1.nextElementSibling.innerHTML = question11.answer1;
        answerElement2.nextElementSibling.innerHTML = question11.answer2;
        answerElement3.nextElementSibling.innerHTML = question11.answer3;

        // make all radio buttons unchecked
        for (var i = 0; i < answerElements.length; i++) {
            answerElements[i].checked = false;
        }

    }
    </script>
</asp:Content>








<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="text-center">

    <h2>Question:</h2>
    <p id="question_id"></p>

    <h2>Answers:</h2>
    <form id="answers" action="" method="post" >
        <input type="radio" id="answer0" name="answer" value="London11"/>
        <label for="answer0">London</label><br/>
        <input type="radio" id="answer1" name="answer" value="Berlin"/>
        <label for="answer1">Berlin</label><br/>
        <input type="radio" id="answer2" name="answer" value="Paris"/>
        <label for="answer2">Paris</label><br/>
        <input type="radio" id="answer3" name="answer" value="Rome"/>
        <label for="answer3">Rome</label>
    </form>


    <button id="previous" class="invisible11">Previous</button>
    <button id="next">Next</button>
    <button id="check" class="invisible11">check</button>
 <%--   <p><a id="resultLink" href="Results.aspx" class="invisible11">Go to the ResultsTest Page</a></p>--%>
</div>
</asp:Content>

