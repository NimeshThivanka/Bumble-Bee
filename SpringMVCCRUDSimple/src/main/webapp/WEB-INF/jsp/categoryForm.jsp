<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<html>
<style>
:root {
    --color-primary: #eb2f64;
    --color-primary-light: #ff3366;
    --color-primary-dark: #ba265d;
    --color-grey-light-1: #faf9f9;
    --color-grey-light-2: #f4f2f2;
    --color-grey-light-3: #f0eeee;
    --color-grey-light-4: #ccc;
    --color-grey-dark-1: #333;
    --color-grey-dark-2: #777;
    --color-grey-dark-3: #999;
    --input-box-bg: #f5f5f5;
    --shadow-dark: 0 2rem 6rem rgba(0, 0, 0, 0.3);
    --shadow-light: 0 2rem 5rem rgba(0, 0, 0, 0.06);
    --line: 1px solid var(--color-grey-light-2);
}

* {
    margin: 0;
    padding: 0;
}

*,
*::before,
*::after {
    box-sizing: inherit;
}

html {
    box-sizing: border-box;
    font-size: 62.5%;
}
@media only screen and (max-width: 68.75em) {
    html {
        font-size: 50%;
    }
}

body {
    font-family: 'Open Sans', sans-serif;
    font-weight: 400;
    line-height: 1.6;
    color: var(--color-grey-dark-2);
    background-image: linear-gradient(to right bottom, #ff3366, #ba265d);
    background-size: cover;
    background-repeat:round;
    min-height: 100vh;

}

.container {
    max-width: 130rem;
    margin: 5rem auto;
    background-color: var(--color-grey-light-1);
    box-shadow: var(--shadow-dark);
    min-height: 50rem;
}

@media only screen and (max-width: 75em) {
    .container {
        margin: 0;
        max-width: 100%;
        width: 100%;
    }
}

.content {
    display: flex;
    overflow: hidden;
}

@media only screen and (max-width: 56.25em) {
    .content {
        flex-direction: column;
    }
}

/*************************************************
            SIDE NAV BAR
*************************************************/

.sidebar {
    background-color: var(--color-grey-dark-1);
    flex: 0 0 18%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    margin-right: 30px;
}

.main-content {
    /* background-color: #eb2f64; */
    flex: 1;
    overflow: hidden;
    height: auto;
    overflow: hidden;
}

.side-nav {
    font-size: 1.4rem;
    list-style: none;
    margin-top: 3.5rem;
}

@media only screen and (max-width: 56.25em) {
    .side-nav {
        display: flex;
        margin: 0;
    }
}

.side-nav__item {
    position: relative;
}

.side-nav__item:not(:last-child) {
    margin-bottom: 0.5rem;
}

@media only screen and (max-width: 56.25em) {
    .side-nav__item:not(:last-child) {
        margin: 0;
    }
}

@media only screen and (max-width: 56.25em) {
    .side-nav__item {
        flex: 1;
    }
}

.side-nav__item::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    width: 3px;
    background-color: var(--color-primary);
    transform: scaleY(0);
    transition: transform 0.2s, width 0.4s cubic-bezier(1, 0, 0, 1) 0.2s,
    background-color 0.1s;
}

.side-nav__item:hover::before,
.side-nav__item--active::before {
    transform: scaleY(1);
    width: 100%;
}

.side-nav__item:active::before {
    background-color: var(--color-primary-light);
}

.side-nav__link:link,
.side-nav__link:visited {
    color: var(--color-grey-light-1);
    text-decoration: none;
    text-transform: uppercase;
    align-items: center;
    padding: 1.5rem 3rem;
    z-index: 10;
    display: flex;
    align-items: center;
    position: relative;
}

@media only screen and (max-width: 56.25em) {
    .side-nav__link:link,
    .side-nav__link:visited {
        justify-content: center;
        padding: 2rem;
    }
}

@media only screen and (max-width: 37.5em) {
    .side-nav__link:link,
    .side-nav__link:visited {
        flex-direction: column;
        padding: 1.5rem 0.5rem;
    }
}

@media only screen and (max-width: 37.5em) {
    .side-nav__icon {
        margin-right: 0;
        margin-bottom: 0.7rem;
        width: 1.5rem;
        height: 1.5rem;
    }
}

.legal {
    font-size: 1.2rem;
    color: var(--color-grey-light-4);
    text-align: center;
    padding: 2.5rem;
}

@media only screen and (max-width: 56.25em) {
    .legal {
        display: none;
    }
}


form {
  max-width: 300px;
  margin: 10px auto;
  padding: 10px 20px;
  background: #f4f7f8;
  border-radius: 8px;
}

h1 {
  margin: 0 0 30px 0;
  text-align: center;
}

input[type="text"],
input[type="password"],
input[type="date"],
input[type="datetime"],
input[type="email"],
input[type="number"],
input[type="search"],
input[type="tel"],
input[type="time"],
input[type="url"],
textarea,
select {
  background: rgba(255,255,255,0.1);
  border: none;
  font-size: 16px;
  height: auto;
  margin: 0;
  outline: 0;
  padding: 15px;
  width: 100%;
  background-color: #e8eeef;
  color: #8a97a0;
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: 30px;
}

input[type="radio"],
input[type="checkbox"] {
  margin: 0 4px 8px 0;
}

select {
  padding: 6px;
  height: 32px;
  border-radius: 2px;
}

button {
  padding: 19px 39px 18px 39px;
  color: #FFF;
  background-color: #4bc970;
  font-size: 18px;
  text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 100%;
  border: 1px solid #3ac162;
  border-width: 1px 1px 3px;
  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}

fieldset {
  margin-bottom: 30px;
  border: none;
}

legend {
  font-size: 1.4em;
  margin-bottom: 10px;
}

label {
  display: block;
  margin-bottom: 8px;
}

label.light {
  font-weight: 300;
  display: inline;
}

.number {
  background-color: #5fcf80;
  color: #fff;
  height: 30px;
  width: 30px;
  display: inline-block;
  font-size: 0.8em;
  margin-right: 4px;
  line-height: 30px;
  text-align: center;
  text-shadow: 0 1px 0 rgba(255,255,255,0.2);
  border-radius: 100%;
}

@media screen and (min-width: 480px) {

  form {
    max-width: 480px;
  }

}

.logOut{
position:absolute;
top:10%;
right:10%;
  border: none;
  color: white;
  background-color: #FF0000;
  padding: 5px 5px;
   text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 7px;
   border-radius:3px;
}
</style>

</html>
<body>
<div class="container">
    <div class="content">
        <div class="sidebar">
         <ul class="side-nav">

                <li class="side-nav__item">
                    <a href="viewInventory" class="side-nav__link">
                        <i class="car icon side-nav__icon" style="margin-bottom: 8px; margin-right: 10px;"></i>
                        <div class="side-nav__text">Inventory Management</div>
                    </a>
                </li>

                <li class="side-nav__item side-nav__item--active">
                    <a href="viewCategory" class="side-nav__link">
                        <i class="search icon side-nav__icon" style="margin-bottom: 8px; margin-right: 10px;"></i>
                        <div class="side-nav__text">Category Management</div>
                    </a>
                </li>

                <li class="side-nav__item">
                    <a href="viewCustomer" class="side-nav__link">
                        <i class="dollar sign icon side-nav__icon" style="margin-bottom: 8px; margin-right: 10px;"></i>
                        <div class="side-nav__text">View Customer</div>
                    </a>
                </li>

               

            </ul>
        

            <div class="legal">
                &copy; 2023 by Bumble bee: Buy first and pay later. All rights reserved.
            </div>
        </div>

        <div class="main-content">
        <div id="wrapper">
        <a href="logout" class="logOut">Log Out</a>
        
        <form:form method="post" id="form" action="/SpringMVCCRUDSimple/Categorysave">  
        <h1>Add Category</h1>

             
               <div class="field">

                    <div class="two fields">
               
                        <div class="field" id="form-container2">
                            <label  for="categoryName">Category Name</label>
                            <input type="text" name="categoryName"  id="categoryName" >

                            <small class="categoryName-error" style="color: red;visibility: hidden;">Cannot Be empty</small>
                        </div>
                    </div>
                </div>
               
                <div class="ssbtn">
                    <button type="submit">Submit</button>
                </div>
             </form:form>  
            




	<script>
	
	let CategoryForm = document.querySelector("#form");

	CategoryForm.addEventListener("submit", e =>{

	      let categoryName = document.querySelector("#categoryName").value;

	    if(categoryName.trim() ===""){
	        e.preventDefault();
	        document.querySelector("#form-container2").classList.add("error");
	        document.querySelector("#categoryName").classList.add("error");
	        document.querySelector(".categoryName-error").style.visibility = "visible";

	    }else {
	        document.querySelector("#categoryName").classList.remove("error");

	    }



	  
	});
	
	</script>	
</body>
</html> 
