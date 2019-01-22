<div class="row">
    <div class="col-md-12">
    
        <!------CONTROL TABS START------>
        <ul class="nav nav-tabs bordered">
            <li class="active">
                <a href="#list" data-toggle="tab"><i class="entypo-menu"></i> 
                    <?php echo get_phrase('book_list');?>
                        </a></li>
       
        </ul>

 <header id="header">
      <div class="container">
        <div class="row">
          <div class="col-md-10">
            <h1><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Books <small>Manage Library Books</small></h1>
          </div>
          <div class="col-md-2">
            <div class="dropdown create">
              <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                Create Content
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a type="button" data-toggle="modal" data-target="#addBook">Add Books</a></li>
                <li><a href="#">Add Users</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </header>

    <section id="breadcrumb">
      <div class="container">
        <ol class="breadcrumb">
          <li><a href="admin/dashboard.php">Dashboard</a></li>
          <li class="active">Books</li>
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
              
              <div class="progress">
                <div class="progress-bar" role="progressbar"  aria-valuemin="0" aria-valuemax="0" style="width: 60%;">
                 
                </div>
              </div>
              
              <div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="0" style="width: 40%;">
                
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-9">
            <!-- Library Overview -->
            <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Books</h3>
              </div>
              <div class="panel-body">
                <div class="row">
                  <div class="col-md-12">
                    <!-- Put library books datatable here -->
                    <table id="book_data" class="table table-hover">
                      <thead>
                        <tr>
                          <th>ID</th>
                          <th>Title</th>
                          <th>Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php include 'include/dataBooks.php'; ?>
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

   
    <!-- Modals -->
    <!-- Add Book -->
    <div class="modal fade" id="addBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <form id="insert_book" method="post">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">Add Book</h4>
            </div>
            <div class="modal-body">
              <label>Title</label>
              <input id="bookTitle" class="form-control" type="text" name="bookTitle"><br>
              <label>Author</label>
              <input id="bookAuthor" class="form-control" type="text" name="bookAuthor"><br>
              <label>Publisher</label>
              <input id="bookPublisher" class="form-control" type="text" name="bookPublisher"><br>
              <label>Year Published</label>
              <input id="yearPublished" class="form-control" type="text" name="yearPublished"><br>
              <!-- hidden input type for book id -->
              <input id="book_id" type="hidden" name="book_id"/>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary">Add Book</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!-- View Book -->
    <div class="modal fade" id="viewBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Book Details</h4>
          </div>
          <div id="book_detail" class="modal-body">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Update Book -->
    <div class="modal fade" id="updateBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <form id="updateForm" method="post">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel">Book Details</h4>
            </div>
            <div id="update_detail" class="modal-body">
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button id="update" type="submit" class="btn btn-primary" data-dismiss="modal">Update</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!-- Delete Book -->
    <div class="modal fade" id="deleteBook" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <form id="deleteForm" method="post">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title" id="myModalLabel"> Delete Book Details?</h4>
            </div>
            <div id="delete_detail" class="modal-body">
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button id="delete" type="delete" class="btn btn-danger" data-dismiss="modal">Delete</button>
            </div>
          </form>
        </div>
      </div>
    </div>

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
              <label>Date joined</label>
              <input type="text" name="dateJoined" id="dateJoined" class="form-control"><br>
              <!-- hidden input type for book id -->
              <input type="hidden" name="user_id" id="user_id" />
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary">Save changes</button>
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

    <!-- JavaScript Codes
    ================================================== -->
    <script type="text/javascript">
      $(document).ready( function () {
        $('#book_data').DataTable();
      });

      // Adding books to the database
      $('#insert_book').on('submit', function(event) {
        event.preventDefault();
        // If the inputs are empty
        if($('#bookTitle').val() == '') {
          $('#bookTitle').css('border', '1px solid red');
        } else if($('#bookAuthor').val() == '') {
          $('#bookAuthor').css('border', '1px solid red');
        } else if($('#bookPublisher').val() == '') {
          $('#bookPublisher').css('border', '1px solid red');
        } else if($('#yearPublished').val() == '') {
          $('#yearPublished').css('border', '1px solid red');
        } else {
          // Add book to the database
          $.ajax ({
            url: 'books/insert.php',
            method: 'POST',
            data: $('#insert_book').serialize(),
            success: function(data) {
              $('#insert_book')[0].reset();
              $('#addBook').modal('hide');
              $('#book_data').html(data);
              alert(data);
              location.reload();
            }
          });
        }
      });

      // Viewing book details
      $(document).on('click', '.view_data', function() {
        var book_id = $(this).attr("id");
        if (book_id != '') {
          $.ajax ({
            url: 'books/view.php',
            type: 'POST',
            data: {book_id:book_id},
            success: function(data) {
              $('#book_detail').html(data);
              $('#viewBook').modal('show');
            }
          });
        }
      });

      // Edit book Details
      $(document).on('click', '.edit_data', function() {
        var edit_id = $(this).attr("id");
        $.ajax ({
          url: 'books/edit.php',
          type: 'POST',
          data: {edit_id:edit_id},
          success: function(data) {
            $('#update_detail').html(data);
            $('#updateBook').modal('show');
          }
        });
      });

      // Update book Details
      $(document).on('click', '#update', function() {
        $.ajax ({
          url: 'books/update.php',
          type: 'POST',
          data: $('#updateForm').serialize(),
          success: function(data) {
            alert(data);
            $('#editBook').modal('hide');
            location.reload();
          }
        });
      });

      // View book details to be deleted
      $(document).on('click', '.delete_data', function() {
        var del_id = $(this).attr('id');
        $.ajax ({
          url: 'books/deleteView.php',
          type: 'POST',
          data: {del_id:del_id},
          success: function(data) {
            $('#deleteBook').modal('show');
            $('#delete_detail').html(data);
          }
        });
      });

      // Deleting book details
      $(document).on('click', '#delete', function() {
        $.ajax ({
          url: 'books/delete.php',
          type: 'POST',
          data: $('#deleteForm').serialize(),
          success: function(data) {
            alert(data);
            $('#deleteBook').modal('hide');
            location.reload();
          }
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
