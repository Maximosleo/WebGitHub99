<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type ="text/javascript" >

        //function CheckCheckBox() {
        //    flag = false
        //    atractions = document.getElementsByName("CONPENY CAR")
        //    for (i = 0; i < atractions.length; i++) {
        //        if (atractions[i].checked == true) {
        //            flag = true
        //        }
        //    }
        //    return flag
        //}

        //function CheckCheckradio() {
        //    flag = false
        //    atractions = document.getElementsByName("gender")
        //    for (i = 0; i < atractions.length; i++) {
        //        if (atractions[i].checked == true) {
        //            flag = true
        //        }
        //    }
        //    return flag
        //}


        //function isValidEmail(email) {
        //    return email.includes('@@');
        //    return email.includes('.');
        //}


        //function CheckFor() {
        //    FirstName = document.getElementById("firstname").value
        //    LastName = document.getElementById("lastname").value
        //    Password = document.getElementById("password").value
        //    Age = document.getElementById("age").value
        //    LivingArea = document.getElementById("living area").value
        //    Id = document.getElementById("identification").value
        //    Email = document.getElementById("email").value


        //    if (FirstName == "") {
        //        alert("FrNError")
        //        return false;
        //    }

        //     if (LastName == "") {
        //        alert("LnError")
        //        return false;
        //    }


        //     if (Email == "") {
        //        alert("EmailError")
        //        return false;
        //    }
        //     if (isValidEmail(Email) == false) {

        //        return false;
        //    }
        //     if (Email.indexOf('@@') < 2) {
        //        return false;
        //    }

        //     if (Password == "") {
        //        alert("PasswordError")
        //        return false;
        //    }

        //     if (Age == "") {
        //        alert("AgeError")
        //        return false;
        //    }

            // if (CheckCheckradio() == false) {
            //    alert("genderError")
            //    return false;
            //}

            // if (Id == '') {
            //    document.getElementById('identification error').innerHTML = "identification contains simboles";
            //    document.getElementById('identification error').style.display = 'inline';
            //    return false;
            //}

            // if (checkcheckbox() == false) {
            //    return false;
            //}


            // if (checkcheckradio() == false) {
            //    return false;
            //}

            // if (LivingArea = 'living in israel 1') {
            //    return false;
            //}

            //if (LivingArea == "living in israel 1") {
            //    document.getElementById("AreaErorr").innerHTML = "חובה למלא אזור במדינה";
            //    document.getElementById("AreaErorr").style.display = 'inline';
            //    return false;
            //}


            //else {
            //    alert ("form correct")
            //    return true;
            //     }
        /*}*/

   
      
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="signupForm" action ="" method ="post" >
    <table>
        <tr>
            <td> FIRST NAME:</td>
            <td>
            <input type="text" id="firstname" placeholder="first name" name="firstname"/> 
            </td>
          
        </tr>
        <tr>
            <td> LAST NAME :</td>
        <td>
    <input type="text" id="lastname" placeholder="last name" name="lastname" /><br />
    </td>
        </tr>

        <tr>
   <td> EMAIL:</td>
   <td> <input type="text" id="email" placeholder="email" name="email"/><br /></td>
            </tr>

            <tr>
   <td> PASSWORD:</td>
   <td> <input type="text" id="password" placeholder="password" name="password"/><br /></td>
    </tr>

    <tr>
    <td> AGE:</td>
   <td> <input type="text" id="age" placeholder="age" name="age"/><br /></td>
    </tr>
    <tr>
   <td>  identification:</td>
    <td><input type="text" id="identification" placeholder="identification" name="identification" /><br /></td>
   <%-- <td> --%> <%--<p style="display: none; color: red" id="identification error"></p></td>--%>
    </tr>
    
    
    <tr>
    <td>
    <br /> <h5> <label> Gender: </label><br /></h5>
    <input type="radio" id="male" name="gender" value="male"/>
    <label for="gender">Male</label><br/>
    <input type="radio" id="female" name="gender" value="female"/>
    <label for="gender">Female</label><br/>
    </td>
        </tr>

    <tr>
        <td>
            <br />
        </td>
    </tr>

        <tr>
     <td>
        <h5> <label> Where Are You Living By Areas </label><br /></h5>
        <select id="living area"  name="livingarea">
        <option value="living in israel 1">

        </option>
        <option>CENTER OF THE ISRAEL</option>
        <option >NORTH OF ISRAEL</option>
        <option>SOUTH OF ISRAEL</option>
        <option>EAST OF ISRAEL</option>
        <option>WEST OF THE ISRAEL</option>
    </select>

    </td>
            <td>  <p style="display: none; color: red" id="AreaErorr"></p> </td>
           
        </tr>

        <tr>
            <td>
                <br />
            </td>
        </tr>
   
        <tr>
     <td>
                <h5> <label> Favourite Compeny Car </label><br /></h5>
                <input type="checkbox" id="MERZADEZ BENZ" name="COMPNEYCAR" value="MERZADEZ BENZ"/>
    <label for="CONPENY CAR">MERZADEZ BENZ</label><br/>
    <input type="checkbox" id="AUDI" name="COMPNEYCAR" value="AUDI" />
    <label for="CONPENY CAR">AUDI</label><br/>
    <input type="checkbox" id="BMW" name="COMPNEYCAR" value="BMW" />
    <label for="CONPENY CAR">BMW</label><br/>
    <input type="checkbox" id="TOYOTA" name="COMPNEYCAR" value="TOYOTA" />
    <label for="CONPENY CAR">TOYOTA</label><br/>
    </td>
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

