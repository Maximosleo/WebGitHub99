﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
	var params11 = new URLSearchParams(window.location.search);
	var value11 = params11.get('value'); // this will be 'someValue'
	var headline11 = document.getElementById('result');

	headline11.innerText = 'The value is: ' + value11;
	//////////

	var headline12 = document.getElementById('response');

	if (value11 >= 3) {
		headline12.innerText = 'You Did Good '

	}
	else {

		headline12.innerText = 'You Failed Your Test ';
	}




    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="text-center">
	<h1>Results Page</h1>
	<p id="result"></p>
	<p id="response"></p>
</div>
</asp:Content>

