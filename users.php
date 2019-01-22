<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Library | Users</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="css/datepicker.css" rel="stylesheet">

    <style>
      .date { z-index: 9999 !important;}
    </style>
  </head>

  <body>

    <nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Manila City Library</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="index.php">Dashboard</a></li>
            <li><a href="#">Librarians</a></li>
            <li><a href="books.php">Books</a></li>
            <li class="active"><a href="users.php">Users</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Welcome, Admin</a></li>
            <li><a href="#about">Logout</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <header id="header">
      <div class="container">
        <div class="row">
          <div class="col-md-10">
            <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Books <small>Manage Library Users</small></h1>
          </div>
          <div class="col-md-2">
            <div class="dropdown create">
              <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                Create Content
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a type="button" data-toggle="modal" data-target="#addBook">Add Books</a></li>
                <li><a type="button" data-toggle="modal" data-target="#addUser">Add Users</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </header>

    <section id="breadcrumb">
      <div class="container">
        <ol class="breadcrumb">
          <li><a href="index.php">Dashboard</a></li>
          <li class="active">Users</li>
        </ol>
      </div>
    </section>

    <section id="main">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <!-- Side panel -->
            <div class="list-group">
              <a href="index.php" class="list-group-item active main-color-bg">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Dashboard
              </a>
              <a href="#" class="list-group-item">
                <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> Librarians
                <span class="badge">10</span>
              </a>
              <a href="books.php" class="list-group-item">
                <span class="glyphicon glyphicon-book" aria-hidden="true"></span> Books
                <span class="badge"><?php include 'include/totalBooks.php'; ?></span>
              </a>
              <a href="users.php" class="list-group-item">
                <span class="glyphicon glyphicon-user" aria-hidden="true"></span> Users
                <span class="badge"><?php include 'include/totalUsers.php'; ?></span>
              </a>
            </div>
            <!-- Side well -->
            <div class="well">
              <h4>Disk Space</h4>
              <div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                  60%
                </div>
              </div>
              <h4>Bandwidth</h4>
              <div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
                  40%
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-9">
            <!-- Library Overview -->
            <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Users</h3>
              </div>
              <div class="panel-body">
                <div class="row">
                  <div class="col-md-12">
                    <!-- Put library books datatable here -->
                    <table id="user_data" class="table table-hover">
                      <thead>
                        <tr>
                          <th>ID</th>
                          <th>Name</th>
                          <th>Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php include 'include/dataUsers.php'; ?>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <footer id="footer">
      <p>Copyright Manila City Library, &copy; 2015</p>
    </footer>

    <!-- Modals -->
    <!-- Add User -->
    <div class="modal fade" id="addUser" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <form id="insert_user" method="post">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">Add User</h4>
            </div>
            <div class="modal-body">
              <label>Last Name</label>
              <input type="text" name="lastName" id="lastName" class="form-control"><br>
              <label>First Name</label>
              <input type="text" name="firstName" id="firstName" class="form-control"><br>
              <label>Middle Name</label>
              <input type="text" name="middleName" id="middleName" class="form-control"><br>
              <label>Birthday</label>
              <input type="text" name="bday" id="bday" class="form-control"><br>
              <label>Address</label>
              <input type="text" name="address" id="address" class="form-control"><br>
              <label>E-mail</label>
              <input type="text" name="email" id="email" class="form-control"><br>
              <!-- datetime picker -->
              <label>Date Joined</label>
              <div class="input-group date">
                <input id="datejoined" class="form-control" type="text" style="z-index: 1600 !important;">
              </div>
              <!-- hidden input type for book id -->
              <input type="hidden" name="user_id" id="user_id" />
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary">Add user</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>

    <!-- JavaScript Codes
    ================================================== -->
    <script type="text/javascript">
      $(document).ready( function () {
        $('#user_data').DataTable();
      });

      $('#addUser').on('shown.bs.modal', function() {
        $(function() {
          $('#datejoined').datepicker({
            format: "dd/mm/yyyy",
            autoclose: true,
            todayHighlight: true,
            container: '#addUser modal-body'
          });
        });
      });

      // Adding users to the database
      $('#insert_user').on('submit', function(event) {
        event.preventDefault();
        // If the inputs are empty
        if($('#lastName').val() == '') {
          $('#lastName').css('border', '1px solid red');
        } else if($('#firstName').val() == '') {
          $('#firstName').css('border', '1px solid red');
        } else if($('#middleName').val() == '') {
          $('#middleName').val('-');
        } else if($('#bday').val() == '') {
          $('#bday').css('border', '1px solid red');
        } else if($('#address').val() == '') {
          $('#address').css('border', '1px solid red');
        } else if($('#email').val() == '') {
          $('#email').css('border', '1px solid red');
        } else {
          // Add book to the database
          $.ajax ({
            url: 'users/insert.php',
            method: 'POST',
            data: $('#insert_user').serialize(),
            success: function(data) {
              $('#insert_user')[0].reset();
              $('#addUser').modal('hide');
              $('#user_data').html(data);
              alert(data);
              location.reload();
            }
          });
        }
      });
    </script>
  </body>
</html>
