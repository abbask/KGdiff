<!DOCTYPE html>
<html lang="en">
<head>
  <title>Unit Test New</title>
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
      <a class="navbar-brand" href="/KGDiff/EndPointList">KGDiff</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/KGDiff/EndPointList">End Points</a></li>      
      
    </ul>
  </div>
</nav>
    
  
<div class="container">
	<h3>Unit Tests: New</h3>
	<p>You can add new unit test.</p>

	<div>
		<form method="post" data-toggle="validator" role="form">   
		  <div class="form-group">
		    <label for="name">Name</label>
		    <input type="text" class="form-control" id="name" name="name" aria-describedby="nameHelp" placeholder="Enter name" required>
		    <small id="nameHelp" class="form-text text-muted">Please select name for your system test.</small>
		  </div>
		  <div class="form-group">
		    <label for="query">Query</label>
		    <input type="text" class="form-control" id="query" name="query" aria-describedby="queryHelp" placeholder="Enter SPARQL query" required>
		    <small id="queryHelp" class="form-text text-muted">Please specify the SPARQL query.</small>
		  </div>
		  		  		
		  <div class="form-group">
			<!-- Button trigger modal -->
			<button id="expectedValueModalBut" type="button" class="btn btn-danger" data-toggle="modal" data-target="#expectedValueModal">
			  Expected Values
			</button>
		
			<!-- Modal -->
			<div class="modal fade" id="expectedValueModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="expectedValueModalLabel">Expected Value</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      <div class="modal-body">
	
					  
					  
					  
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button id="modalSave" type="button" class="btn btn-primary">Save changes</button>
			      </div>
			    </div>
			  </div>
			</div>
		  </div>
		  
		  <div id="tableDiv" class="form-group">
		    
		  </div>
		  
		  <div class="form-group">
		  	<input id="formValue" name="formValue" type="hidden" value=""/>		  	
		  </div>
		  <div class="form-group">
		  	<input id="formTripple" name="formTripple" type="hidden" value=""/>		  	
		  </div>
		  <div class="form-group">
		  	<input id="formAssertType" name="formAssertType" type="hidden" value=""/>		  	
		  </div>
		  
		  <div class="form-group">
		    <label for="message">Message</label>
		    <input type="text" class="form-control" id="message" name="message" aria-describedby="messageHelp" placeholder="Enter a message" required>
		    <small id="messageHelp" class="form-text text-muted">Please specify a message.</small>
		  </div>
		  
		  <div class="form-check">
		  	<label for="systemTest">System Test</label>
		    <select class="form-control" id="systemTest" name="systemTest">
		    	<#list systemTests as systemTest>
		    		<option value="${systemTest.ID}">${systemTest.name}</option>
		    	<#else>
		    		
		    	</#list>
		    </select>
		    <small id="systemTestHelp" class="form-text text-muted">Please select system test.</small>
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Submit</button>
		  <a class="btn btn-default pull-right" href="/OntologyTesting/UnitTestList" role="button">Cancel</a>

		</form>
	</div>
</div>

</body>
</html>