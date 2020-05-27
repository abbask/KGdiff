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
      <li ><a href="/KGDiff/compare">Comparison</a></li>   
    </ul>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/KGDiff/showschema">Schema</a></li>   
    </ul>
  </div>
</nav>
  
<div class="container">
	<div class="row">
		<h3>List of Versions</h3>
		<p>please select the version you want.</p>
		
	</div>
	<div class="row" >
		<form class="form-inline" method="POST" action="/OntologyComparing/showschema">
		
			<div class="col-xs-16">
				
				<select class="form-control" id="version" name="version">
					<option value="0">-- select --</option>
					<#list versions as version>
						<#if selectedVersion??> 
							<#if selectedVersion.ID == version.ID>
								<option value="${version.ID}" selected="selected">${version.name} - ${version.number}</option>
							<#else>
								<option value="${version.ID}">${version.name} - ${version.number}</option>
							</#if>
						<#else>
							<option value="${version.ID}">${version.name} - ${version.number}</option>
						</#if>
						
					</#list>			    		
			    </select>
				<button id="show" type="submit" class="btn btn-primary">Show</button>
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
		    <a class="nav-link" id="objectProps" data-toggle="tab" href="#objectProp" role="tab" aria-controls="objectProp" aria-selected="false">Object Prop</a>
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
		    <a class="nav-link" id="restrictionsL" data-toggle="tab" href="#restrictions" role="tab" aria-controls="restrictions" aria-selected="false">Restriction</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="expressionsL" data-toggle="tab" href="#expressions" role="tab" aria-controls="expressions" aria-selected="false">Expressions</a>
		  </li>
		</ul>
		<div class="tab-content" id="myTabContent">
		  <div class="tab-pane fade" id="count" role="tabpanel" aria-labelledby="count">
		  	<table class="table table-striped">
				<#if classCount??> 
				<thead><tr><th scope="col"></th><th scope="col">Counts</th></tr></thead><tbody>
				<tr><th scope="row">Number of Classes</th><td> ${classCount.result} </td></tr> 			
				<tr><th scope="row">Number of Object Property</th><td> ${objectPropertyCount.result} </td></tr> 
				<tr><th scope="row">Number of Datatype Property</th><td> ${datatypePropertyCount.result} </td></tr> 
				<tr><th scope="row">Number of Individual</th><td> ${individualCount.result} </td></tr> 
				<tr><th scope="row">Number of Object Triple Type</th><td> ${objectTripleTypeCount.result} </td></tr> 
				<tr><th scope="row">Number of Datatype Triple Type</th><td> ${datatypeTripleTypeCount.result} </td></tr> 
				<tr><th scope="row">Number of Restriction</th><td> ${restrictionCount.result} </td></tr> 
				<tr><th scope="row">Number of Expression</th><td> ${expressionCount.result} </td></tr> 
				<script>
					$('#myTab li:first-child a').tab('show');
				</script>
				
				</#if>	
			</tbody></table>
		  </div>
		  <div class="tab-pane fade" id="classD" role="tabpanel" aria-labelledby="classes">
		  	<table class="table table-striped">
		  		
			  	<#if classes?? >
			  		<#if classes?size != 0> 
				  		<thead><tr><th scope="col">Label</th><th scope="col">Counts</th><th scope="col">Parent class</th></tr></thead><tbody>
						<#list classes as c>
						
							<tr><td> ${c.label} </td><td> ${c.count} </td><td><#if c.parents?size != 0><#list c.parents as p>${p.label},</#list></#if></td></tr> 					
						</#list>
					<#else>
						<thead><tr><th scope="col"></th></tr></thead><tbody><tr><th>No data available</td></tr>	
					</#if>
				</#if>
			</tbody></table>
		  </div>
		  <div class="tab-pane fade" id="objectProp" role="tabpanel" aria-labelledby="objectProp">
		  	<table class="table table-striped">
		  		<#if objectProperties??>
		  			<#if objectProperties?size != 0> 
				  		<thead><tr><th scope="col">Label</th><th>Domain</th><th>Range</th><th scope="col">Parent Property</th></tr></thead><tbody>
						<#list objectProperties as o>
							
							<#assign domain = "">
							<#assign range = "">
							<#list o.domainRanges as dr>
								<#if dr.theClass??>			
									<#if dr.type == "Domain" > 																		
										<#assign domain +=dr.theClass.label>												
									</#if>
									<#if dr.type == "Range" > 												
										<#assign range +=dr.theClass.label>
									</#if>
								</#if>
							</#list>
							
							<tr><td> ${o.label} </td><td>${domain}</td><td>${range} </td><td><#if o.parent??> ${o.parent.label} </#if> </td></tr> 					
						</#list>
					<#else>
						<thead><tr><th scope="col"></th></tr></thead><tbody><tr><th>No data available</td></tr>	
					</#if>
				</#if>
			</tbody></table>
		  </div>
		  <div class="tab-pane fade" id="datatypeProp" role="tabpanel" aria-labelledby="datatypeProp">
		  	<table class="table table-striped">
		  		<#if datatypeProperties??> 
		  			<#if datatypeProperties?size != 0> 
				  		<thead><tr><th scope="col">Label</th><th>Domain</th><th>Range</th><th scope="col">Parent Property</th></tr></thead><tbody>
						<#list datatypeProperties as o>
							
							<#assign domain = "">
							<#assign range = "">
							<#list o.domainRanges as dr>
								<#if dr.type == "Domain" > 	
									<#if dr.theClass??>								
										<#assign domain +=dr.theClass.label>
									</#if>
								</#if>
								<#if dr.type == "Range" > 
									<#assign range +=dr.xsdType.type>									
								</#if>
							</#list>
							
							<tr><td> ${o.label} </td><td>${domain}</td><td>${range} </td><td><#if o.parent??> ${o.parent.label} </#if> </td></tr> 					
						</#list>	
					<#else>
						<thead><tr><th scope="col"></th></tr></thead><tbody><tr><th>No data available</td></tr>	
					</#if>
				</#if>
			</tbody></table>
		  </div>
		  <div class="tab-pane fade" id="objectTriple" role="tabpanel" aria-labelledby="objectTriple">
		  	<table class="table table-striped">
		  		<#if objectTripleTypes??> 
			  		<thead><tr><th scope="col">Domain</th><th scope="col">Property</th><th scope="col">Range</th><th scope="col">Count</th></tr></thead><tbody>
					<#list objectTripleTypes as o>					
						<tr>
							<td><#if o.domain??> ${o.domain.label} </#if></td>
							<td><#if o.predicate??> ${o.predicate.label} </#if></td>
							<td><#if o.range??> ${o.range.label} </#if></td>
							<td> ${o.count} </td>
						</tr> 					
					</#list>	
				</#if>
			</tbody></table>
		  </div>
		  <div class="tab-pane fade" id="datatypeTriple" role="tabpanel" aria-labelledby="datatypeTriple">
		  	<table class="table table-stripeobjectPropertiesd">
		  		<#if datatypeTripleTypes??> 
			  		<thead><tr><th scope="col">Domain</th><th scope="col">Property</th><th scope="col">Range</th><th scope="col">Count</th></tr></thead><tbody>
					<#list datatypeTripleTypes as d>					
						<tr>
							<td><#if d.domain??> ${d.domain.label} </#if></td>
							<td><#if d.predicate??> ${d.predicate.label} </#if></td>
							<td><#if d.range??> ${d.range.type} </#if></td>
							<td> ${d.count} </td>
						</tr> 					
					</#list>	
				</#if>
			</tbody></table>
		  </div>
		  <div class="tab-pane fade" id="restrictions" role="tabpanel" aria-labelledby="restrictions">
		  	<table class="table table-striped">
		  		<#if restrictions??> 
		  			<#if restrictions?size != 0>
				  		<thead><tr><th scope="col">Propert</th><th scope="col">Type</th><th scope="col">Class</th><th scope="col">cardinality</th></tr></thead><tbody>
						<#list restrictions as r>					
							<tr>
								<td><#if r.onProperty??> ${r.onProperty.label} </#if></td>
								<td><#if r.type??> ${r.type.type} </#if></td>
								<td><#if r.onClass??> ${r.onClass.label} </#if></td>
								<td> ${r.value} </td>
							</tr> 					
						</#list>	
					<#else>
						<thead><tr><th scope="col"></th></tr></thead><tbody><tr><th>No data available</td></tr>
					</#if>
				</#if>
			</tbody></table>

		  </div>
		  <div class="tab-pane fade" id="expressions" role="tabpanel" aria-labelledby="expressions">
		  	<table class="table table-striped">
		  		<#if expressions??> 
		  			<#if expressions?size != 0>
				  		<thead><tr><th scope="col"></th><th scope="col">Type</th><th scope="col">Classes</th></tr></thead><tbody>
						<#list expressions as e>					
							<tr>
								
								
								<td> ${e.onProperty}</td>
								<td>${e.type}</td>
								<td> 
									<#list e.classes as c> ${c.label} &nbsp; </#list>
								</td>
								
							</tr> 					
						</#list>	
					<#else>
						<thead><tr><th scope="col"></th></tr></thead><tbody><tr><th>No data available</td></tr>
					</#if>
				</#if>
			</tbody></table>
		  </div>
		</div>
	</div>
	
</div>

</body>
</html>