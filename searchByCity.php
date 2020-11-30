<? php  


if (isset($_POST['submit'])) {

    require_once("tempConn.php");

    $city1 = $_POST['first-city'];
    $city2 = $_POST['second-city'];


    //$query = "SELECT city_City, average_temp FROM cities_average_temps WHERE city_City = :cityInput";
    $query1 = "CALL compare_cities(:city1)";
    $query2 = "CALL compare_cities(:city2)";



try
    {
      $prepared_stmt = $dbo->prepare($query);
      $prepared_stmt->bindValue(':first-city', $city1, PDO::PARAM_STR);
      $prepared_stmt->execute();
      $result1 = $prepared_stmt->fetchAll();

    }
    catch (PDOException $ex)
    { // Error in database processing.
      echo $sql . "<br>" . $error->getMessage(); // HTTP 500 - Internal Server Error
    }


    try
    {
      $prepared_stmt = $dbo->prepare($query);
      $prepared_stmt->bindValue(':second-city', $city2, PDO::PARAM_STR);
      $prepared_stmt->execute();
      $result2 = $prepared_stmt->fetchAll();

    }
    catch (PDOException $ex)
    { // Error in database processing.
      echo $sql . "<br>" . $error->getMessage(); // HTTP 500 - Internal Server Error
    }
}

?>
<html>
<head>
	<title>Search by City</title>
</head>
<body>

	
	<h1>Enter First City Name</h1>

	<!-- Search form -->
	<div class="md-form mt-0">
  		<input class="form-control" type="text" name ="first-city" placeholder="i.e. London" aria-label="Search">
  		<input type="submit" name="submit" value="Submit">
	</div>

	<h1>Enter Second City Name</h1>

	<!-- Search form -->
	<div class="md-form mt-0">
  		<input class="form-control" type="text"  name = "second-city" placeholder="i.e. Paris" aria-label="Search">
  		<input type="submit" name="submit" value="Submit">
	</div>

	<?php
      if (isset($_POST['submit'])) {
        if ($result1 && $prepared_stmt->rowCount() > 0) { ?>
    
              <h2>First City Data</h2>

              <table>
                <thead>
                  <tr>
                    <th>City Name</th>
                    <th>Average Temperature</th>
                  </tr>
                </thead>
                <tbody>
            
                  <?php foreach ($result as $row) { ?>
                
                    <tr>
                      <td><?php echo $row["city_City"]; ?></td>
                      <td><?php echo $row["average_temp"]; ?></td>
                    </tr>
                  <?php } ?>
                </tbody>
            </table>
  
        <?php } else { ?>
          Sorry No results found for <?php echo $_POST['first-city']; ?>.
        <?php }
    } ?>

</body>
</html>