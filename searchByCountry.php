<? php  


if (isset($_POST['submit'])) {

    require_once("tempConn.php");

    $dateOf = $_POST['country_input'];

    $query = "SELECT country_Country, average_temp FROM countries_average_temps WHERE country_Country = :country_input";


try
    {
      $prepared_stmt = $dbo->prepare($query);
      $prepared_stmt->bindValue(':country_input', $country_input, PDO::PARAM_STR);
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
	<title>Search by Country</title>
</head>
<body>

	<h1>Enter First Country Name</h1>

	<!-- Search form -->
	<div class="md-form mt-0">
  		<input class="form-control" type="text" placeholder="i.e. Ecuador" aria-label="Search">
  		<input type="submit" name="submit" value="Submit">
	</div>

		<h1>Enter Second Country Name</h1>

	<!-- Search form -->
	<div class="md-form mt-0">
  		<input class="form-control" type="text" placeholder="i.e. Tanzania" aria-label="Search">
  		<input type="submit" name="submit" value="Submit">
	</div>
</body>
</html>