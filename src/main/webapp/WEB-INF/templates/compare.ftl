<!DOCTYPE html>
<html lang="en">
<head>
  <title>Compare Versions</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/compare-style.css">
  <script src="js/compareAction.js"></script>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/KGDiff/VersionList">KGDiff</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="/KGDiff/VersionList">Versions</a></li>      
   	<ul class="nav navbar-nav">
      <li class="active"><a href="/KGDiff/compare">Comparison</a></li>   
    </ul>
    <ul class="nav navbar-nav">
      <li ><a href="/KGDiff/showschema">Schema</a></li>   
    </ul>
  </div>
</nav>
  
<div class="container">
	<div class="row">
		<h3>List of Versions</h3>
		<p>please select versions you want to compare.</p>
		
	</div>
	<div class="row" >
		<form class="form-inline">
		
			<div class="col-xs-16">
				
				<select class="form-control" id="version1" name="version1">
					<option value="0">-- select --</option>
					<#list versions as version>
						<option value="${version.ID}">${version.name} - ${version.number}</option>
					</#list>			    		
			    </select>
			    <select class="form-control" id="version2" name="version2">
					<option value="0">-- select --</option>
					<#list versions as version>
						<option value="${version.ID}">${version.name} - ${version.number}</option>
					</#list>			    		
			    </select>
				<button id="compare" type="button" class="btn btn-primary">Compare</button>
			</div>
		</form>
	</div>
	 <div class="row " style="padding-top: 40px;">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
		  <li class="nav-item">
		    <a class="nav-link active" id="Counts" data-toggle="tab" href="#count" role="tab" aria-controls="count" aria-selected="true">Count</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="classes" data-toggle="tab" href="#classD" role="tab" aria-controls="classes" aria-selected="false">Class</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="IndividualOfClasses" data-toggle="tab" href="#IndividualOfClass" role="tab" aria-controls="IndividualOfClass" aria-selected="false">Indv</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="objectProps" data-toggle="tab" href="#objectProp" role="tab" aria-controls="objectProp" aria-selected="false">object Prop</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="datatypeProps" data-toggle="tab" href="#datatypeProp" role="tab" aria-controls="datatypeProp" aria-selected="false">Datatype Prop</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="objectTriples" data-toggle="tab" href="#objectTriple" role="tab" aria-controls="objectTriple" aria-selected="false">Object Triple</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="datatypeTriples" data-toggle="tab" href="#datatypeTriple" role="tab" aria-controls="datatypeTriple" aria-selected="false">Datatype Triple</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="objectTripleforEachTriple" data-toggle="tab" href="#objectTripleforEach" role="tab" aria-controls="objectTripleforEach" aria-selected="false">Object Triple #</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="datatypeTripleforEachTriple" data-toggle="tab" href="#datatypeTripleforEach" role="tab" aria-controls="datatypeTripleforEach" aria-selected="false">Datatype Triple #</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="restrictionsL" data-toggle="tab" href="#restrictions" role="tab" aria-controls="restrictions" aria-selected="false">Restriction</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="expressionsL" data-toggle="tab" href="#expressions" role="tab" aria-controls="expressions" aria-selected="false">Expressions</a>
		  </li>
		</ul>
		<div class="tab-content" id="myTabContent">
		  <div class="tab-pane fade" id="count" role="tabpanel" aria-labelledby="count"></div>
		  <div class="tab-pane fade" id="classD" role="tabpanel" aria-labelledby="classes"></div>
		  <div class="tab-pane fade" id="IndividualOfClass" role="tabpanel" aria-labelledby="IndividualOfClass"></div>
		  <div class="tab-pane fade" id="objectProp" role="tabpanel" aria-labelledby="objectProp"></div>
		  <div class="tab-pane fade" id="datatypeProp" role="tabpanel" aria-labelledby="datatypeProp"></div>
		  <div class="tab-pane fade" id="objectTriple" role="tabpanel" aria-labelledby="objectTriple"></div>
		  <div class="tab-pane fade" id="datatypeTriple" role="tabpanel" aria-labelledby="datatypeTriple"></div>
		  <div class="tab-pane fade" id="objectTripleforEach" role="tabpanel" aria-labelledby="objectTripleforEach"></div>
		  <div class="tab-pane fade" id="datatypeTripleforEach" role="tabpanel" aria-labelledby="datatypeTripleforEach"></div>
		  <div class="tab-pane fade" id="restrictions" role="tabpanel" aria-labelledby="restrictions"></div>
		  <div class="tab-pane fade" id="expressions" role="tabpanel" aria-labelledby="expressions"></div>
		</div>
	</div>
	
</div>

</body>
</html>