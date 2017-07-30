
<%@page import="com.gm.team18.businesslogiclayer.BusinessLogic"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Where is my Artifact</title>
    <%BusinessLogic bl = new BusinessLogic(); %>
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    
  </head>
  
  
<body>  
<div class="container">
	<h1>Where is my Artifact</h1>
	
	<div class="jumbotron">
        <h2>Find your Artifact</h2>
        <h3>This App help you to find a specific artifact, and get a forecast where the artifact going to be in certain conditions</h3>
        <p>Depends of temperature, humidity the artifacts will find the right place, getting be a start things!</p>    
    </div>
    
    <div>
    <div class="col-lg-12">
    <div class="input-group">
      <input type="text" class="form-control" placeholder="Search for artifact, Car1ModelGM-Ford ">
      <span class="input-group-btn">
        <button class="btn btn-secondary" type="button">Find me</button>
      </span>
    </div>
   
    
    <div class="row">
	  <div class="col-sm-4" align="right"><img src="images/cold.jpg" class="img-responsive" alt="Cinque Terre" width="30" height="20"></div>
	  <div class="col-sm-4" align="center"><input id="rangeValue1" type="text" size="3"/></div>
	  <div class="col-sm-4" align="left"><img src="images/hot.jpg" class="img-responsive" alt="Cinque Terre" width="30" height="20"></div>
	</div>
    
    <div class="large-2 columns">
		<input id="slider1" type="range" min="-32" max="120" step="10" 
		onchange="printValue('slider1','rangeValue1')"/>
	</div>
    
    
    <div>
   		<p>Im the artifact: <%=bl.getbyName() %> find me here!</p>
    	<br/>
    </div>
    </div>
      	<img src="images/map.jpg" class="img-responsive" alt="Cinque Terre" width="1200" height="800">
    </div>
    </div>
      
   
   
   	<script>
    function printValue(sliderID, textbox) {
        var x = document.getElementById(textbox);
        var y = document.getElementById(sliderID);
        x.value = y.value;
    }
    window.onload = function() { printValue('slider1', 'rangeValue1'); printValue('slider2', 'rangeValue2'); printValue('slider3', 'rangeValue3'); printValue('slider4', 'rangeValue4'); }
    </script>
      
       
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
