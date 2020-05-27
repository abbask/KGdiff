<!DOCTYPE html>
<html lang="en">
<head>
  <title>Retrieve Schema</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="js/RetrieveSchemaProgress.js" type='text/javascript'></script>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/KGDiff/VersionList">KGDiff</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/KGDiff/VersionList">Version</a></li>      
      
    </ul>
    <ul class="nav navbar-nav">
      <li 	><a href="/KGDiff/compare">Comparison</a></li>   
    </ul>
    <ul class="nav navbar-nav">
      <li ><a href="/KGDiff/showschema">Schema</a></li>   
    </ul>
  </div>
</nav>
    
  
<div class="container">
	<h3>Retrieve Schema for ${version.name} version ${version.ID}</h3>
	<p>You can retrieve schema by using an endpoint and giving the graph name.</p>
	<input id="version_id" type="hidden" value="${version.ID}">
	<div>
		<form class="form-inline">
		  <div class="form-group  mx-sm-3 mb-2">
		    <label for="endpoint" class="sr-only">Endpoint</label>
		    <input type="text" class="form-control" id="endpoint" placeholder="Endpoint URL" value=""><br/>
		    
		  </div>
		  <div class="form-group mx-sm-3 mb-2">
		    <label for="graphName" class="sr-only">Graph Name</label>
		    <input type="text" class="form-control" id="graphName" placeholder="Graph name">
		  </div>
		  <button id="Retrieve" type="submit" class="btn btn-primary mb-2">Retrieve</button>
		  <a  class="btn btn-default " href="/OntologyComparing/VersionList" role="button">Cancel</a>
		</form>
	</div>
	<div class="progressDiv">
	</div>
</div>

</body>
</html>