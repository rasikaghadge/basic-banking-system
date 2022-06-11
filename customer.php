<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TSF Bank | History</title>
    <link rel="icon" href="./img/icon_bank.png">
    <script src="https://kit.fontawesome.com/50b1d2491c.js" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
  </head>

  <body>
      <header class="header">TSF Bank</header>

      <div class="body">

      <?php  
        echo '<h2 class="intro" style="letter-spacing: 2px; font-weight: bold;"><center>Customers</center></h2>';
        echo '<table class="listtable table-light table  table-striped table-hover mt-2"  style="opacity: 0.9; width: 80%; margin: auto;">
          <tr class="table-dark">
              <th>ID</th>
              <th>Name</th>
              <th>E-mail</th>
              <th>Account Balance</th>
          </tr>';

        $server = "localhost";
        $username = "id19088538_root";
        $password = "nHe~~?%QGF7_=\E1";
        $database = "id19088538_banking_system";

        // Create a database connection
        $con = mysqli_connect($server, $username, $password, $database);

        // Check for connection success
        if(!$con){
            die("connection to this database failed due to" . mysqli_connect_error());
        }
          
        $sql = "SELECT id,Name,email,balance FROM customer;";
        $sql1 = "SELECT Name FROM customer;";
        
        // Execute the query
            $result=mysqli_query($con,$sql);
            while($row=mysqli_fetch_array($result)){
                // var_dump($row);
                echo '<tr>
                <td>'.$row["id"].'</td>
                <td>'.$row["Name"].'</td>
                <td>'.$row["email"].'</td>
                <td>'.$row["balance"].'</td>
                </tr>';
            }
            echo'</table>';
      ?> <br>
      <hr/>

      <!-- <h1 class="text-center font-weight-bold mb-5">Transfer Money</h1> -->
      <form action="select.php" method="POST" style="text-align:center">
        <label class="choose" style="color: #111; font-size: 1rem; font-weight: 500;">Sender Name: </label>
        <select id="cus" name="cus" style="width: 18%; height: 26px; margin-left: 8px;">
          <?php $result1=mysqli_query($con,$sql1); ?>
          <?php while($row1=mysqli_fetch_array($result1)):; ?>
          <option value="<?php echo $row1[0]; ?>">
            <?php echo $row1[0]; ?>
          </option>
          <?php endwhile ;
            $con->close();
          ?>
        </select><br>
        
        <div>
          <button class="btn btn-info btn-sm col-lg-2 btn-select" style="margin-top:20px;">Select Receiver</button>
        </div>

      </form>
      <br><br>
    </div>
          <!-- </div> -->

    <!----------Footer---------->
    <footer id="footer">
      <p>&copy; Copyright 2022 <span class="footer_logo">Rasika G.</span></p>
    </footer>
  </body>
</html>