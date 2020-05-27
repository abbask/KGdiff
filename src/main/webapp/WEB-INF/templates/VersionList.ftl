<!DOCTYPE html>
<html lang="en">
<head>
  <title>Version - List</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/KGDiff/VersionList">KGDiff</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/KGDiff/VersionList">Versions</a></li>      
      
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
	<h3>List of Versions</h3>
	<p>You can see list of versions and load them.</p>
	<div  style="float: left;">
		<a href="VersionNew" class="btn btn-primary btn-md active" role="button" aria-pressed="true">Add new Version</a>
	</div>
	<div>
		<table class="table table-striped table-responsive">
		  <thead>
		    <tr>
		      <th class="col-sm-2" scope="col">Name</th>
		      <th class="col-sm-2" scope="col">Number</th>
		      <th class="col-sm-2" scope="col">Date</th>
		      <th class="col-sm-3" scope="col"></th>
		      <th class="col-sm-1" scope="col"></th>
		      <th class="col-sm-2" scope="col"></th>
		    </tr>
		  </thead>
		  <tbody>
		  	<#list versions as version>
				<tr >
					<td >
						${version.name}
					</td>
					<td style="text-overflow: ellipsis;">
						${version.number}					
					</td>
					<td >
						${version.date}					
					</td>
					<td>
						<a href="RetrieveSchema?id=${version.ID}" class="btn btn-danger btn-md active" role="button" aria-pressed="true">Retrieve Schema</a>
					</td>
					<td>
						<a href="" class="btn btn-danger btn-md active" role="button" aria-pressed="true">Edit</a>
					</td>
					<td>
						<a href="VersionRemove?id=${version.ID}" class="btn btn-danger btn-md active" role="button" aria-pressed="true">Remove</a>
					</td>
					
				</tr>
			<#else>
			  <tr>
			  	<td colspan="4">
			  		No data found
			  	</td>
			  </tr>
			</#list>
			

		  </tbody>
		</table>
	</div>
</div>

</body>
</html>