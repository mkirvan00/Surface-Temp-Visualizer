<?php  


if (isset($_POST['submit'])) {

    require_once("tempConn.php");

    $state = $_POST['state'];

    $query1 = "SELECT state_State, average_temp FROM states_average_temps WHERE state_State = :state LIMIT 10; ";


try
    {
      $prepared_stmt = $dbo->prepare($query1);
      $prepared_stmt->bindValue(':state', $state, PDO::PARAM_STR);
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
  <title>Search by State</title>
</head>
<body>

  <h1>Enter First State Name</h1>

    <form method="post">
    <label for="first-city">First State</label>
        <input type="text" name="state">
      
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
            
                  <?php foreach ($result1 as $row) { ?>
                
                    <tr>
                      <td><?php echo $row["state_State"]; ?></td>
                      <td><?php echo $row["average_temp"]; ?></td>
                    </tr>
                  <?php } ?>
                </tbody>
            </table>
  
        <?php } else { ?>
          Sorry, no results found for <?php echo $_POST['state']; ?>.
        <?php }
    } ?>

</body>
</html>