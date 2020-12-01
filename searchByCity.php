<?php  

if (isset($_POST['submit'])) {

    require_once("tempConn.php");

    $city1 = $_POST['first-city'];
    //$city2 = $_POST['second-city'];
    $query1 = "CALL compare_cities(:first-city)";// ask TA

try
    {
      $prepared_stmt = $dbo->prepare($query1);
      $prepared_stmt->bindValue(':first-city', $city1, PDO::PARAM_STR);
      $prepared_stmt->execute();
      $result1 = $prepared_stmt->fetchAll();

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
 

  <form method="post">
    <label for="first-city">First City</label>
        <input type="text" name="first-city">
      
        <input type="submit" name="submit" value="Submit">
    </form>



  <!-- Search form -->
  

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
          Sorry, no results found for <?php echo $_POST['first-city']; ?>.
        <?php }
    } ?>

</body>
</html>