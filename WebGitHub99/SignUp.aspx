<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css.css" />
    <script type="text/javascript">
        function CheckCheckBox() {
            var flag = false;
            var cc = document.getElementsByName("COMPNEYCAR");
            for (var i = 0; i < cc.length; i++) {
                if (cc[i].checked == true) {
                    flag = true;
                }
            }
            return flag;
        }

        function CheckCheckradio() {
            var flag = false;
            var g = document.getElementsByName("gender");
            for (var i = 0; i < g.length; i++) {
                if (g[i].checked == true) {
                    flag = true;
                }
            }
            return flag;
        }

        function isValidEmail(email) {
            return email.includes('@') && email.includes('.');
        }

        function CheckFor() {
            var FirstName = document.getElementById("firstname").value;
            var LastName = document.getElementById("lastname").value;
            var Password = document.getElementById("password").value;
            var Age = document.getElementById("age").value;
            var LivingArea = document.getElementById("livingarea").value;
            var Id = document.getElementById("identification").value;
            var Email = document.getElementById("email").value;

            if (FirstName == "") {
                document.getElementById('FNerorr').innerHTML = "First name is empty";
                document.getElementById('FNerorr').style.display = 'inline';
                return false;
            } else {
                document.getElementById('FNerorr').style.display = 'none';
            }

            if (LastName == "") {
                document.getElementById('LNerorr').innerHTML = "Last name is empty";
                document.getElementById('LNerorr').style.display = 'inline';
                return false;
            } else {
                document.getElementById('LNerorr').style.display = 'none';
            }

            if (Email == "") {
                document.getElementById('EmailErorr').innerHTML = "Email is empty";
                document.getElementById('EmailErorr').style.display = 'inline';
                return false;
            } else {
                document.getElementById('EmailErorr').style.display = 'none';
            }

            if (!isValidEmail(Email)) {
                document.getElementById('EmailErorr').innerHTML = "Email is invalid";
                document.getElementById('EmailErorr').style.display = 'inline';
                return false;
            } else {
                document.getElementById('EmailErorr').style.display = 'none';
            }

            if (Email.indexOf('@') < 2) {
                document.getElementById('EmailErorr').innerHTML = "Email is too short";
                document.getElementById('EmailErorr').style.display = 'inline';
                return false;
            } else {
                document.getElementById('EmailErorr').style.display = 'none';
            }

            if (Password == "") {
                document.getElementById('PassErorr').innerHTML = "Password is empty";
                document.getElementById('PassErorr').style.display = 'inline';
                return false;
            } else {
                document.getElementById('PassErorr').style.display = 'none';
            }

            if (Age == "") {
                document.getElementById('AgeErorr').innerHTML = "Age is empty";
                document.getElementById('AgeErorr').style.display = 'inline';
                return false;
            } else {
                document.getElementById('AgeErorr').style.display = 'none';
            }

            if (isNan(Age)) {
                document.getElementById('AgeErorr').innerHTML = "Age is invalid";
                document.getElementById('AgeErorr').style.display = 'inline';
                return false;
            } else {
                document.getElementById('AgeErorr').style.display = 'none';
            }

            if (Id == '') {
                document.getElementById('IDerror').innerHTML = "ID is empty";
                document.getElementById('IDerror').style.display = 'inline';
                return false;
            } else {
                document.getElementById('IDerror').style.display = 'none';
            }

            if (!CheckCheckradio()) {
                document.getElementById('GenderErorr').innerHTML = "Gender not selected";
                document.getElementById('GenderErorr').style.display = 'inline';
                return false;
            } else {
                document.getElementById('GenderErorr').style.display = 'none';
            }

            if (LivingArea == '') {
                document.getElementById('AreaErorr').innerHTML = "No area selected";
                document.getElementById('AreaErorr').style.display = 'inline';
                return false;
            } else {
                document.getElementById('AreaErorr').style.display = 'none';
            }

            if (!CheckCheckBox()) {
                document.getElementById('CCerorr').innerHTML = "No cars selected";
                document.getElementById('CCerorr').style.display = 'inline';
                return false;
            } else {
                document.getElementById('CCerorr').style.display = 'none';
            }

            

            alert("Form is correct");
            return true;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="signupForm" action="" method="post" onsubmit="return CheckFor()">
        <table>
            <tr>
                <td> FIRST NAME:</td>
                <td>
                    <input type="text" id="firstname" placeholder="First name" name="firstname" />
                </td>
                <td><p style="display: none; color: red" id="FNerorr"></p></td>
            </tr>
            <tr>
                <td> LAST NAME :</td>
                <td>
                    <input type="text" id="lastname" placeholder="Last name" name="lastname" /><br />
                </td>
                <td><p style="display: none; color: red" id="LNerorr"></p></td>
            </tr>
            <tr>
                <td> EMAIL:</td>
                <td> <input type="text" id="email" placeholder="Email" name="email" /><br /></td>
                <td><p style="display: none; color: red" id="EmailErorr"></p></td>
            </tr>
            <tr>
                <td> PASSWORD:</td>
                <td> <input type="password" id="password" placeholder="Password" name="password" /><br /></td>
                <td><p style="display: none; color: red" id="PassErorr"></p></td>
            </tr>
            <tr>
                <td> AGE:</td>
                <td> <input type="text" id="age" placeholder="Age" name="age" /><br /></td>
                <td><p style="display: none; color: red" id="AgeErorr"></p></td>
            </tr>
            <tr>
                <td>  identification:</td>
                <td><input type="text" id="identification" placeholder="Identification" name="identification" /><br /></td>
                <td><p style="display: none; color: red" id="IDerror"></p></td>
            </tr>
            <tr>
                <td>
                    <br /> <h5> <label> Gender: </label><br /></h5>
                    <input type="radio" id="male" name="gender" value="male" />
                    <label for="gender">Male</label><br/>
                    <input type="radio" id="female" name="gender" value="female" />
                    <label for="gender">Female</label><br/>
                </td>
                <td><p style="display: none; color: red" id="GenderErorr"></p></td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <h5> <label> Where Are You Living By Areas </label><br /></h5>
                    <select id="livingarea" name="livingarea">
                        <option value="">Select an option</option>
                        <option value="CENTER OF THE ISRAEL">CENTER OF THE ISRAEL</option>
                        <option value="NORTH OF ISRAEL">NORTH OF ISRAEL</option>
                        <option value="SOUTH OF ISRAEL">SOUTH OF ISRAEL</option>
                        <option value="EAST OF ISRAEL">EAST OF ISRAEL</option>
                        <option value="WEST OF THE ISRAEL">WEST OF THE ISRAEL</option>
                    </select>
                </td>
                <td><p style="display: none; color: red" id="AreaErorr"></p></td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <h5> <label> Favorite Company Car </label><br /></h5>
                    <input type="checkbox" id="MERZADEZ BENZ" name="COMPNEYCAR" value="MERZADEZ BENZ" />
                    <label for="CONPENY CAR">MERZADEZ BENZ</label><br/>
                    <input type="checkbox" id="AUDI" name="COMPNEYCAR" value="AUDI" />
                    <label for="CONPENY CAR">AUDI</label><br/>
                    <input type="checkbox" id="BMW" name="COMPNEYCAR" value="BMW" />
                    <label for="CONPENY CAR">BMW</label><br/>
                    <input type="checkbox" id="TOYOTA" name="COMPNEYCAR" value="TOYOTA" />
                    <label for="CONPENY CAR">TOYOTA</label><br/>
                </td>
                <td><p style="display: none; color: red" id="CCerorr"></p> </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="sign up" id="sign up" value="Submit" />
                </td>
            </tr>
            <tr>
                <td>
                    <p id="responseLabel"></p>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
