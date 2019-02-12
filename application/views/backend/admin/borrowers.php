                <a href="javascript:;" onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_borrower_add/');" 
                class="btn btn-primary pull-right">
                  <i class="entypo-plus-circled"></i>
                  <?php echo get_phrase('Add New Borrower');?>
                </a> 
            <!-- SELECT * FROM student, teacher, librarian, books -->
                <br><br>
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-tabs bordered">
                            <li class="active">
                                <a href="#home" data-toggle="tab">
                                    <span class="visible-xs"><i class="entypo-users"></i></span>
                                    <span class="hidden-xs"><?php echo get_phrase('list_of_borrowers');?></span>
                                </a>
                            </li>
                            <li >
                                <a href="#return" data-toggle="tab">
                                    <span class="visible-xs"><i class="entypo-users"></i></span>
                                    <span class="hidden-xs"><?php echo get_phrase('returned_books');?></span>
                                </a>
                            </li>
                            <li>
                                <a href="#frequent_borrowers" data-toggle="tab">
                                    <span class="visible-xs"><i class="entypo-users"></i></span>
                                    <span class="hidden-xs"><?php echo get_phrase('frequent_borrowers');?></span>
                                </a>
                            </li>
                        </ul>
                        <div class="tab-content"><!--  -->
                            <div class="tab-pane active" id="home">
                                <table class="table table-bordered datatable" id="table_1">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th><div><?php echo get_phrase('name');?></div></th>
                                            <th><div><?php echo get_phrase('book');?></div></th>
                                            <th><div><?php echo get_phrase('date_borrowed');?></div></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                            $count = 1; 
                                            $this->db->select('book.book_id,student.name as student_name, borrowers.date_borrowed, book.name as book_name, borrower_id');
                                            $this->db->from('borrowers');
                                            $this->db->where('borrowers.status','borrowed');
                                            $this->db->join('student','student.student_id = borrowers.student_id','left');
                                            $this->db->join('book','book.book_id = borrowers.book_id','left');
                                            
                                            $query = $this->db->get()->result_array();
                                            foreach($query as $row):?>
                                        <tr>
                                            <td><?php echo $count++;?></td>
                                            <td><?php echo $row['student_name'];?></td>
                                            <td><?php echo $row['book_name'];?></td>
                                            <td><?php echo $row['date_borrowed'];?></td>
                                            <td>
                                                
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
                                                        Action <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu dropdown-default pull-right" role="menu">
                                                        
                                                        <!-- teacher EDITING LINK -->
                                                        <li>
                                                            <a href="#" onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_borrower_edit/<?php echo $row['borrower_id'];?>');">
                                                                <i class="entypo-pencil"></i>
                                                                    <?php echo get_phrase('edit');?>
                                                                </a>
                                                                        </li>
                                                        <li class="divider"></li>
                                                        
                                                        <!-- teacher DELETION LINK -->
                                                        <li>
                                                            <a href="#" onclick="confirm_modal('<?php echo base_url();?>index.php?admin/borrowers/delete/<?php echo $row['borrower_id'];?>');">
                                                                <i class="entypo-trash"></i>
                                                                    <?php echo get_phrase('delete');?>
                                                                </a>
                                                        </li>
                                                        <li class="divider"></li>
                                                        <li>
                                                            <a href="<?php echo base_url(); ?>index.php?admin/borrowers/return/<?php echo $row['borrower_id']?>/<?php echo $row['book_id'] ?>" >
                                                                <i class="entypo-reply"></i>
                                                                <?php echo get_phrase('return_book') ?>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                
                                            </td>
                                        </tr>
                                        <?php endforeach;?>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane" id="return">
                                <table class="table table-bordered datatable" id="table_2">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th><div><?php echo get_phrase('name');?></div></th>
                                            <th><div><?php echo get_phrase('book');?></div></th>
                                            <th><div><?php echo get_phrase('date_returned');?></div></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                            $count = 1; 
                                            $this->db->select('student.name as student_name, borrowers.date_returned, book.name as book_name, borrower_id');
                                            $this->db->from('borrowers');
                                            $this->db->where('borrowers.status','returned');
                                            $this->db->join('student','student.student_id = borrowers.student_id','left');
                                            $this->db->join('book','book.book_id = borrowers.book_id','left');
                                            
                                            $query = $this->db->get()->result_array();
                                            foreach($query as $row):?>
                                        <tr>
                                            <td><?php echo $count++;?></td>
                                            <td><?php echo $row['student_name'];?></td>
                                            <td><?php echo $row['book_name'];?></td>
                                            <td><?php echo $row['date_returned'];?></td>
                                            <td>
                                                
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
                                                        Action <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu dropdown-default pull-right" role="menu">
                                                        
                                                        <!-- teacher EDITING LINK -->
                                                        <li>
                                                            <a href="#" onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_borrower_edit/<?php echo $row['borrower_id'];?>');">
                                                                <i class="entypo-pencil"></i>
                                                                    <?php echo get_phrase('edit');?>
                                                                </a>
                                                                        </li>
                                                        <li class="divider"></li>
                                                        
                                                        <!-- teacher DELETION LINK -->
                                                        <li>
                                                            <a href="#" onclick="confirm_modal('<?php echo base_url();?>index.php?admin/borrowers/delete/<?php echo $row['borrower_id'];?>');">
                                                                <i class="entypo-trash"></i>
                                                                    <?php echo get_phrase('delete');?>
                                                                </a>
                                                                        </li>
                                                    </ul>
                                                </div>
                                                
                                            </td>
                                        </tr>
                                        <?php endforeach;?>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane" id="frequent_borrowers">
                                <table class="table table-bordered datatable">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th><div><?php echo get_phrase('name');?></div></th>
                                            <th><div><?php echo get_phrase('books borrowed') ?></div></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                            $count = 1; 
                                            
                                            $this->db->select('student.name as student_name, borrower_frequency.borrower_frequency');
                                            $this->db->from('borrower_frequency');
                                            $this->db->join('student','student.student_id = borrower_frequency.student_id','left');
                                            $this->db->order_by('borrower_frequency.borrower_frequency','DESC');
                                            $this->db->limit('10');

                                            $query = $this->db->get()->result_array();
                                            foreach($query as $row):?>
                                        <tr>
                                            <td><?php echo $count++;?></td>
                                            <td><?php echo $row['student_name'];?></td>
                                            <td><?php echo $row['borrower_frequency'] ?></td>
                                        </tr>
                                        <?php endforeach;?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>


