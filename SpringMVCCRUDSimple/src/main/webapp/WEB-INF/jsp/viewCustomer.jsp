  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    <html>
    <head>
    
    <style>
    
    @import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700');
    

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
   



h1,h2,h3,h4,h5,h6 {
	margin:0;
}


.table {
   position:absolute;
   top:30%;
   right:10%;
	width:60%;
	border:1px solid $color-form-highlight;
}

.table-header {
	display:flex;
	width:100%;
	background:#000;
	padding:($half-spacing-unit * 1.5) 0;
}

.table-row {
	display:flex;
	width:100%;
	padding:10px;
	
	&:nth-of-type(odd) {
		background:$color-form-highlight;
	}
}

.table-data, .header__item {
	flex: 1 1 20%;
	text-align:center;
}

.header__item {
	text-transform:uppercase;
}

.filter__link {
	color:white;
	text-decoration: none;
	position:relative;
	display:inline-block;
	padding-left:$base-spacing-unit;
	padding-right:$base-spacing-unit;
	
	&::after {
		content:'';
		position:absolute;
		right:-($half-spacing-unit * 1.5);
		color:white;
		font-size:$half-spacing-unit;
		top: 50%;
		transform: translateY(-50%);
	}
	
	&.desc::after {
		content: '(desc)';
	}

	&.asc::after {
		content: '(asc)';
	}
	
}
.topic{
 position:absolute;
top:15%;
left:30%;
color:#4CAF50;

}

.btn-inventory{
position:absolute;
top:15%;
left:70%;
 background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
 
 
}
.edit-btn{
 border: none;
  color: white;
  background-color: #FF4500;
  padding: 5px 12px;
   text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 7px;
  border-radius:3px;
}
.delete-btn{
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
    
    
    </head>
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

                <li class="side-nav__item ">
                    <a href="viewCategory" class="side-nav__link">
                        <i class="search icon side-nav__icon" style="margin-bottom: 8px; margin-right: 10px;"></i>
                        <div class="side-nav__text">Category Management</div>
                    </a>
                </li>

                 <li class="side-nav__item side-nav__item--active">
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
    
	<h1 class="topic">Customer List</h1>
	<a href="logout" class="logOut">Log Out</a>
	<div class="table">
	
		<div class="table-header">
			
			<div class="header__item"><a id="draws" class="filter__link filter__link--number" href="#">Customer Name</a></div>
			<div class="header__item"><a id="losses" class="filter__link filter__link--number" href="#">Date of Birth</a></div>
				<div class="header__item"><a id="wins" class="filter__link filter__link--number" href="#">Loan Balance</a></div>
					<div class="header__item"><a id="wins" class="filter__link filter__link--number" href="#">Used Amount</a></div>
					<div class="header__item"><a id="wins" class="filter__link filter__link--number" href="#">Installment Plan</a></div>
		
		</div>
		<div class="table-content">	
		  <c:forEach var="customer" items="${list}"> 
			<div class="table-row">		
				<div class="table-data">${customer.fullName}</div>
				<div class="table-data">${customer.dateOfBirth}</div>
				<div class="table-data">${customer.loanBalance}</div>
				<div class="table-data">${customer.userAmount}</div>
				<div class="table-data">${customer.installmentPlan}</div>
			</div>
			  </c:forEach>
			
		</div>	
	</div>
</div>
    
    
    </body>
    
    
    
    </html> 

	
	