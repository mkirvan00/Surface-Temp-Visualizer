<?php  


if (isset($_POST['submit'])) {

    require_once("tempConn.php");

    $country = $_POST['country'];

    $query1 = "SELECT country_Country, average_temp FROM countries_average_temps WHERE country_Country = :country LIMIT 10;";


try
    {
      $prepared_stmt = $dbo->prepare($query1);
      $prepared_stmt->bindValue(':country', $country, PDO::PARAM_STR);
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
  <title>Search by Country</title>
</head>
<body>

  <h1>Enter First Country Name</h1>

  <form method="post">
    <label for="country">First Country</label>
        <input type="text" name="country">
      
        <input type="submit" name="submit" value="Submit">
    </form>

    <?php
      if (isset($_POST['submit'])) {
        if ($result1 && $prepared_stmt->rowCount() > 0) { ?>
    
              <h2>First Country Data</h2>

              <table>
                <thead>
                  <tr>
                    <th>Country Name</th>
                    <th>Average Temperature</th>
                  </tr>
                </thead>
                <tbody>
            
                  <?php foreach ($result1 as $row) { ?>
                
                    <tr>
                      <td><?php echo $row["country_Country"]; ?></td>
                      <td><?php echo $row["average_temp"]; ?></td>
                    </tr>
                  <?php } ?>
                </tbody>
            </table>
  
        <?php } else { ?>
          Sorry, no results found for <?php echo $_POST['country']; ?>.
        <?php }
    } ?>
</body>
</html>