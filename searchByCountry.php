<? php  


if (isset($_POST['submit'])) {

    require_once("tempConn.php");

    $country1 = $_POST['first-country'];

    $query1 = "CALL compare_country(:first-country)";


try
    {
      $prepared_stmt = $dbo->prepare($query);
      $prepared_stmt->bindValue(':country_input', $country_input, PDO::PARAM_STR);
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
    <label for="first-city">First State</label>
        <input type="text" name="first-country">
      
        <input type="submit" name="submit" value="Submit">
    </form>

    <?php
      if (isset($_POST['submit'])) {
        if ($result1 && $prepared_stmt->rowCount() > 0) { ?>
    
              <h2>First City Data</h2>

              <table>
                <thead>
                  <tr>
                    <th>State Name</th>
                    <th>Average Temperature</th>
                  </tr>
                </thead>
                <tbody>
            
                  <?php foreach ($result as $row) { ?>
                
                    <tr>
                      <td><?php echo $row["country_Country"]; ?></td>
                      <td><?php echo $row["average_temp"]; ?></td>
                    </tr>
                  <?php } ?>
                </tbody>
            </table>
  
        <?php } else { ?>
          Sorry, no results found for <?php echo $_POST['first-country']; ?>.
        <?php }
    } ?>
</body>
</html>