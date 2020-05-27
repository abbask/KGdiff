<!DOCTYPE html>
<html lang="en">
<head>
  <title>Version - New</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="js/unitTestmodal.js" type='text/javascript'></script>
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
      <li ><a href="/KGDiff/compare">Comparison</a></li>   
    </ul>
    <ul class="nav navbar-nav">
      <li><a href="/KGDiff/showschema">Schema</a></li>   
    </ul>
  </div>
</nav>
    
  
<div class="container">
	<h3>Version: New</h3>
	<p>You can add new version.</p>

	<div>
		<form method="post" data-toggle="validator" role="form">   
		  <div class="form-group">
		    <label for="name">Name</label>
		    <input type="text" class="form-control" id="name" name="name" aria-describedby="nameHelp" placeholder="Enter name" required>
		    <small id="nameHelp" class="form-text text-muted">Please select name for your system test.</small>
		  </div>
		  <div class="form-group">
		    <label for="query">Number</label>
		    <input type="text" class="form-control" id="number" name="number" aria-describedby="numberHelp" placeholder="Enter Number" required>
		    <small id="numberHelp" class="form-text text-muted">Please specify the version number.</small>
		  </div>		  		  		
		  <div class="form-group">
		    <label for="query">Date</label>
		    <input type="date" class="form-control" id="date" name="date" aria-describedby="dateHelp" placeholder="Enter Date" required>
		    <small id="dateHelp" class="form-text text-muted">Please specify the version date.</small>
		  </div>
		  <button type="submit" class="btn btn-primary">Submit</button>
		  <a class="btn btn-default pull-right" href="/OntologyComparing/VersionList" role="button">Cancel</a>

		</form>
	</div>
</div>

</body>
</html>