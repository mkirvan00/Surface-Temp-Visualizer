<? php  


if (isset($_POST['submit'])) {

    require_once("tempConn.php");

    $dateOf = $_POST['state_input'];

    $query = "SELECT state_State, average_temp FROM states_average_temps WHERE state_State = :state_input";


try
    {
      $prepared_stmt = $dbo->prepare($query);
      $prepared_stmt->bindValue(':state_input', $state_input, PDO::PARAM_STR);
      $prepared_stmt->execute();
      $result = $prepared_stmt->fetchAll();

    }
    catch (PDOException $ex)
    { // Error in database processing.
      echo $sql . "<br>" . $error->getMessage(); // HTTP 500 - Internal Server Error
    }
}

?>
<html>
<head>
	<title>Search by State</title>
</head>
<body>

	<h1>Enter First State Name</h1>

	<!-- Search form -->
	<div class="md-form mt-0">
  		<input class="form-control" type="text" placeholder="i.e. Tennessee" aria-label="Search">
  		<input type="submit" name="submit" value="Submit">
	</div>

		<h1>Enter Second State Name</h1>

	<!-- Search form -->
	<div class="md-form mt-0">
  		<input class="form-control" type="text" placeholder="i.e. Colorado" aria-label="Search">
  		<input type="submit" name="submit" value="Submit">
	</div>

</body>
</html>