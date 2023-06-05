<%@ Page Title="" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css.css" />
    <script type="text/javascript">
        window.onload = function () {
            var params = new URLSearchParams(window.location.search);
            var score = parseInt(params.get('score'));

            var resultElement = document.getElementById('result');
            var responseElement = document.getElementById('response');

            resultElement.innerText = 'Your Score: ' + score * 20 + '/100';
            scoreforCS = document.getElementById("scoreforCS").value
            scoreforCS.value = (score * 20);
            if (score >= 3) {
                responseElement.innerText = 'You Passed the Test! Congratulations!';
            } else {
                responseElement.innerText = 'You Failed the Test. Try Again!';
            }

            var pointsElement = document.getElementById('points');
            pointsElement.innerText = 'Points Breakdown:';
            for (var i = 1; i <= 5; i++) {
                var questionElement = document.getElementById('question' + i);
                var answerElement = document.getElementById('answer' + i);

                if (i <= score) {
                    questionElement.style.color = 'green';
                    answerElement.style.color = 'green';
                } else {
                    questionElement.style.color = 'red';
                    answerElement.style.color = 'red';
                }
            }
        };
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="text-center">
        <h2 id="result"></h2>
        <p id="response"></p>
        <h3 id="points"></h3>
        <p id="question1">Question 1: AAAAA <span id="answer1">Answer 00 fsdgf</span></p>
        <p id="question2">Question 2: BBBBB <span id="answer2">Answer 10 fsdgf</span></p>
        <p id="question3">Question 3: CCCCC <span id="answer3">Answer 20 fsdgf</span></p>
        <p id="question4">Question 4: DDDDD <span id="answer4">Answer 30 fsdgf</span></p>
        <p id="question5">Question 5: EEEEE <span id="answer5">Answer 40 fsdgf</span></p>
      <form action="" method ="post" >
          <input type="submit" name="submit" value ="save results" />
          <input type="hidden" id="scoreforCS" name="scoreforCS" value="" />
      </form> 
    </div>
</asp:Content>
