<!DOCTYPE html>
<html lang="en">
<head>
  <title>Unit Test List</title>
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
      <a class="navbar-brand" href="/KGDiff/EndPointList">KGDiff</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/KGDiff/EndPointList">End Points</a></li>      
      
    </ul>
  </div>
</nav>
  
<div class="container">
	<h3>List of Endpoints</h3>
	<p>You can see list of endpoints and load them.</p>
	<div  style="float: left;">
		<a href="EndpointNew" class="btn btn-primary btn-md active" role="button" aria-pressed="true">Add Endpoint</a>
	</div>
	<div>
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">Name</th>
		      <th scope="col">URL</th>
		      <th scope="col">message</th>
		      <th scope="col">Action</th>
		      <th scope="col"></th>
		    </tr>
		  </thead>
		  <tbody>
		  	<#list endpoints as endpoint>
				<tr>
					<td>
						${endpoint.name}
					</td>
					<td style="text-overflow: ellipsis;">

						
						${endpoint.url}
						
					</td>
					<td>
						message
					</td>
					<td>
						system name
					</td>
					<td>
						<a href="UnitTestRemove?id=${endpoint.ID}" class="btn btn-danger btn-md active" role="button" aria-pressed="true">Remove</a>
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